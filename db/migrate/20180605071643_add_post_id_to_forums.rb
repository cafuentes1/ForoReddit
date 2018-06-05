class AddPostIdToForums < ActiveRecord::Migration[5.1]
  def change
    add_column :forums, :post_id, :integer
  end
end
