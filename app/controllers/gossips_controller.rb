class GossipsController < ApplicationController

  def new
    @gossips = Gossipp.new
  end

  def create
    @user = User.find(58)
    @gossips = Gossipp.new(title:params[:title], content:params[:content], user_id: @user.id)

    if @gossips.save
        redirect_to '/gossips'
    else
    end
  end

  def edit

  @gossips = Gossipp.find(params[:id])
  end

  def update
  @user = User.find(58)
  @gossips = Gossipp.find(params[:id])
  @gossips.update(title: params[:title], content: params[:content])
  redirect_to  gossips_path
  end

  def destroy
    @gossips = Gossipp.find(params[:id])
    @gossips.destroy
    redirect_to gossips_path
  end

end
