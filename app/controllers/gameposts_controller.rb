class GamepostsController < ApplicationController
  before_action :signed_in_user, only: [:index, :create, :destroy]
  before_action :correct_user,   only: :destroy

  
  def index
	@gamepost = current_user.gameposts.build
    if signed_in?
	  @gamefeed_items = current_user.gamefeed.paginate(page: params[:page])
    end
  end
  
  def create
    @gamepost = current_user.gameposts.build(gamepost_params)
    if @gamepost.save
      flash[:success] = "Game Sale created!"
      redirect_to :back
    else
      @gamefeed_items = []
      redirect_to :back
    end
  end

  def destroy
    @gamepost.destroy
    redirect_to :back
  end

  def gamefeed
	Gamepost.where("user_id = ?", id)
  end
  
  private

    def gamepost_params
      params.require(:gamepost).permit(:content)
    end
	    
	def correct_user
      @gamepost = current_user.gameposts.find_by(id: params[:id])
	rescue
	  redirect_to :back
	end
end