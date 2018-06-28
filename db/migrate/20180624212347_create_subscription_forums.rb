class CreateSubscriptionForums < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_forums do |t|
      t.integer :forum_id
      t.integer :user_id

      t.timestamps
    end
  end
end
