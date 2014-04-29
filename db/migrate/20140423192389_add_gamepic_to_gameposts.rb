class AddGamepicToGameposts < ActiveRecord::Migration
  def change
    add_column :gameposts, :gamepic, :string
  end
end