class GossipController < ApplicationController
  def show
    @show_gossip = Gossipp.find(params[:id_gossip])
  end
end
