class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :address, :description, :bedrooms, :bathrooms, :price, :image_file_name

end
