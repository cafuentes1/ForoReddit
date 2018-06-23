class Comment < ApplicationRecord

  belongs_to :post
  belongs_to :user

  has_reputation :votes, source: :user, aggregated_by: :sum

  validates :comment, presence: true

end
