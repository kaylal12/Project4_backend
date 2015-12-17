class Profile < ActiveRecord::Base
  belongs_to :user, autosave: true

  has_many :listings

  has_attached_file :profile_picture,
              :path => '/images/:style/:filename.:extension',
              :styles => { :medium => "500x500>", :thumb => "300x300>" },
              :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :profile_picture, :content_type => /\Aimage\/.*\Z/

  def rename_profile_picture
    self.profile_picture.instance_write :file_name, "#{Time.now.to_i.to_s}.png"
  end

  before_post_process :rename_profile_picture
end
