class Gamepic < ActiveRecord::Base
  belongs_to :gallery
  mount_uploader :gamepic, GamepicUploader
  
  private 
    def gamepic_params
      params.require(:gamepic).permit(:gameid, :gamename, :gamepic)
    end
end
