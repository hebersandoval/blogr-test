class Post < ActiveRecord::Base
  validates :user_id, presence: true
  validates :type, presence: true

  belongs_to :user
  has_many :comments
end
