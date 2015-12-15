class ListingsController < ApplicationController
  before_action :set_listing, only: [:update, :destroy]

  def index
    render json: Listing.all
  end

  def show
    render json: Listing.find(params[:id])
  end

  def create
    @listing = current_user.profile.listings.build(listing_params)

    if @listing.save
      render json: @listing, status: :created,
      location: @listing
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  def update
    if @listing.update(listing_params)
      head :no_content
    else
      render json: @listing.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @listing.destroy
    head :no_content
  end

  private

  def set_listing
    @listing = current_user.profile.listings.find(params[:id])
  end

  def listing_params
    params.require(:listings).permit(:title, :address, :bedrooms, :bathrooms, :description, :price)
  end
end
