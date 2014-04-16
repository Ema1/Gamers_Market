class CreateGamepic < ActiveRecord::Migration
  def change
    create_table :gamepics do |t|
      t.integer :gallery_id
      t.string :name
	  
      t.timestamps
    end
  end
end