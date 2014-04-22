class GamepicsController < ApplicationController
  
  helper_method :count
  
  def new
    @gamepic = Gamepic.new(:gallery_id => params[:gallery_id])
  end

  def create
    @gamepic = Gamepic.new(gamepic_params)
    if @gamepic.save
      flash[:notice] = "Successfully created picture."
	  redirect_to :back
	  
    else
      render 'new'
    end
  end

  def edit
    @gamepic = Gamepic.find(params[:id])
  end

  def update
    @gamepic = Gamepic.find(params[:id])
    if @gamepic.update_attributes(params[:gamepic])
      flash[:notice] = "Successfully updated picture."
      redirect_to :back
    else
      render 'edit'
    end
  end

  def destroy
    @gamepic = Gamepic.find(params[:id])
    @gamepic.destroy
    flash[:notice] = "Successfully deleted picture."
    redirect_to :back
  end
  
  private 
    def gamepic_params
      params.require(:gamepic).permit(:gameid, :gamename, :gamepic)
    end
end