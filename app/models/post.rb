class Post < ApplicationRecord
  belongs_to :user
  belongs_to :forum
  has_many :comments

  #Favoritos
  has_many :favorites, dependent: :destroy

  # Para eventualmente ver los posts favoritos de distintos usuarios sin que esten logueados
  scope :favorited_by, -> (username){ joins(:favorites).where(favorites: {user: User.where(username: username) }) }
end
