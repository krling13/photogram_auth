class Like < ActiveRecord::Base
  validates :photo, :presence => true
  validates :user, :presence => true, :uniqueness => { :scope => :photo_id }

  belongs_to :user
  belongs_to :photo
end
