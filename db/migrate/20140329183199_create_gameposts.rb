class CreateGameposts < ActiveRecord::Migration
  def change
    create_table :gameposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :gameposts, [:user_id, :created_at]
  end
end
