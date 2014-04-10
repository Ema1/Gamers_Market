class GamepostsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  
  def index
  end
  
  def create
    @gamepost = current_user.gameposts.build(gamepost_params)
    if @gamepost.save
      flash[:success] = "Game Sale created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @game.destroy
    redirect_to root_url
  end

  private

    def gamepost_params
      params.require(:game).permit(:content)
    end
	    
	def correct_user
      @game = current_user.game.find_by(id: params[:id])
      redirect_to root_url if @game.nil?
    end
end