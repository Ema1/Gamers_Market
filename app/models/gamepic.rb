class Gamepic < ActiveRecord::Base
   mount_uploader :gamepic, GamepicUploader
   belongs_to :gamepost
end