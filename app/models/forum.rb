class Forum < ApplicationRecord

  has_many :posts
  has_many :users, through: :posts

  validates :title, :topic, :description, presence: true
  resourcify

end
