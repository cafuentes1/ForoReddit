class Post < ApplicationRecord
  belongs_to :user
  belongs_to :forum
  has_many :comments

  def self.search(search)
    where("title LIKE ?", "%#{search}")
    where("content LIKE ?", "%#{search}")
  end
end
