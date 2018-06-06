class Post < ApplicationRecord

  belongs_to :forum
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title, :content, presence: true
  resourcify

  def self.search(search)
    if search
      where(["lower(title) LIKE ? or lower(content) LIKE ?", "%#{search}%", "%#{search}%" ])
    else
      all
    end
  end

end
