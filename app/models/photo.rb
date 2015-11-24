class Photo < ActiveRecord::Base
  validates :user, :presence => true

  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  belongs_to :user
  has_many :fans, :through => :likes, :source => :user

  # mount_uploader :image, ImageUploader

end
