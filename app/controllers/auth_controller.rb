#
class AuthController < ApplicationController
  skip_before_action :authenticate, only: [:login, :register]

  # POST /login
  def login
    @user = User.authenticate credentials[:email], credentials[:password]
    if @user
      render json: @user, serializer: LoginUserSerializer, root: 'user'
    else
      head :unauthorized
    end
  end

  # POST /register
  def register
    @user = User.create(credentials)
    @user.build_profile(profile)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /logout/1
  def logout
    if current_user == User.find(params[:id])
      current_user.logout
      head :no_content
    else
      head :unauthorized
    end
  end

  private

  def credentials
    params.require(:credentials).permit(:email, :password, :password_confirmation)
  end

  def profile
    params.require(:profile).permit(:first_name, :surname)
  end

end
