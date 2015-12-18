class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :surname, :description, :profile_picture_file_name

  has_many :listings
end
