class Forum < ApplicationRecord
  belongs_to :user
  has_many :posts

  def self.search(params)
    forums = Forum.where("title LIKE ? or topic LIKE ? or description LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    forums # returns the forums containing the search words
  end

end
