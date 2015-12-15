class Profile < ActiveRecord::Base
  belongs_to :user, autosave: true

  has_many :listings
end
