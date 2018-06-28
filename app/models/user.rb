class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :forums, through: :posts

  #Posts Favoritos
  has_many :favorite_posts
  has_many :favorites, through: :favorite_posts, source: :post

  #Subscripción a Foros
  has_many :subscription_forums
  has_many :subscriptions, through: :subscription_forums, source: :forum

  has_reputation :posts_votes, source: {reputation: :votes, of: :posts}, aggregated_by: :sum
  has_reputation :comments_votes, source: {reputation: :votes, of: :comments}, aggregated_by: :sum
  has_reputation :rp, source: [{reputation: :posts_votes}, {reputation: :comments_votes}], aggregated_by: :sum

  '''has_reputation :rp,
    :source => [
      { :reputation => :posts_votes },
      { :reputation => :comments_votes }],
    :aggregated_by => :sum

  has_reputation :posts_votes,
    :source => { :reputation => :votes, :of => :posts},
    :aggregated_by => :sum

  has_reputation :comments_votes,
    :source => { :reputation => :votes, :of => :comments},
    :aggregated_by => :sum'''
end
