class Gamepic < ActiveRecord::Base
  belongs_to :gallery
  mount_uploader :gamepic, GamepicUploader
  
  private 
    def app_params
      params.require(:gamepic).permit(:gameid, :gamename, :gamepic, :remote_image_url)
    end
end
