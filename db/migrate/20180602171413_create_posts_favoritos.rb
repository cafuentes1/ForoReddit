class CreatePostsFavoritos < ActiveRecord::Migration[5.1]
  def change
    create_table :posts_favoritos do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :post, foreign_key: true

      t.timestamps
    end
  end
end
