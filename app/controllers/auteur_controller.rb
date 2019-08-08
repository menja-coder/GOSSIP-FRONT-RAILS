class AuteurController < ApplicationController
  def profil
  @auteur = User.find(params[:id])
  end
end
