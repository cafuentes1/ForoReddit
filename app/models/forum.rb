class Forum < ApplicationRecord
  belongs_to :user
  has_many :posts

  def self.search(search)
  	where("title ILIKE ?", "%#{search}")
  	where("description ILIKE ?", "%#{search}")
  end
end
