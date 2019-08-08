class HomeController < ApplicationController
  def index
    @user = params[:user]
    @gossip = Gossipp.all
  end
end
