class GamepicController < ApplicationController
  def new
    @gamepic = gamepic.new(:gallery_id => params[:gallery_id])
  end

  def create
    @gamepic = gamepic.new(params[:gamepic])
    if @gamepic.save
      flash[:notice] = "Successfully created picture."
      redirect_to @gamepic.gallery
    else
      render :action => 'new'
    end
  end

  def edit
    @gamepic = gamepic.find(params[:id])
  end

  def update
    @gamepic = gamepic.find(params[:id])
    if @gamepic.update_attributes(params[:gamepic])
      flash[:notice] = "Successfully updated picture."
      redirect_to @gamepic.gallery
    else
      render :action => 'edit'
    end
  end

  def destroy
    @gamepic = gamepic.find(params[:id])
    @gamepic.destroy
    flash[:notice] = "Successfully deleted picture."
    redirect_to @gamepic.gallery
  end
end