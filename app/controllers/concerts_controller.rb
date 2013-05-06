class ConcertsController < ApplicationController
  def show
  	 @concert = Concert.find(params[:id])
  	 @artists = @concert.artists
  end

  def index
  	@concerts=Concert.where(["date > ? AND category = ?", Time.now, 'concert'])
  	@abonnement=Concert.where(["date > ? AND category = ?", Time.now.year, 'abonnement'])
  end

end
