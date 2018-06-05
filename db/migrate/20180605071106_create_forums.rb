class CreateForums < ActiveRecord::Migration[5.1]
  def change
    create_table :forums do |t|
      t.string :title
      t.string :topic
      t.text :description

      t.timestamps
    end
  end
end
