class Comment < ActiveRecord::Base
  validates :photo, :presence => true
  validates :user, :presence => true
  validates :body, :presence => true

  belongs_to :user
  belongs_to :photo

end
