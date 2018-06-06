class Forum < ApplicationRecord

  has_many :posts
  has_many :users, through: :posts

  validates :title, :topic, :description, presence: true
  resourcify

  def self.search(search)
    if search
      where(["lower(title) LIKE ? or lower(topic) LIKE ? or lower(description) LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%" ])
    else
      all
    end
  end

end
