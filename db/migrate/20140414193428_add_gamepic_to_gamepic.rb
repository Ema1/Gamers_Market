class AddGamepicToGamepic < ActiveRecord::Migration
  def change
    add_column :gamepics, :gamepic, :string
  end
end
