class Gallery < ActiveRecord::Base
  has_many :gamepics
  
  private 
    def gallery_params
      params.require(:gallery).permit(:name)
    end

end