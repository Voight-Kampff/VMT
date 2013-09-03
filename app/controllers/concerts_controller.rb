class ConcertsController < ApplicationController
  def show
  	 @concert = Concert.find(params[:id])
  	 @artists = @concert.artists
  end

  def index
  	@concerts=Concert.where(["date > ? AND category = ?", 2013, 'concert'])
  	@abonnement=Concert.where(["date > ? AND category = ?", Time.now, 'abonnement'])
  end

end
