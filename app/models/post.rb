class Post < ApplicationRecord

  belongs_to :forum
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_reputation :votes, source: :user, aggregated_by: :sum

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
