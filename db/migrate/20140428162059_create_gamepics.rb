class CreateGamepics < ActiveRecord::Migration
  def change
    create_table :gamepics do |t|
      t.string :gamepic
      t.integer :gamepost_id

      t.timestamps
    end
    add_index :gamepics, [:gamepost_id, :created_at]
  end
end
