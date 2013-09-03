class ConcertsController < ApplicationController
  def show
  	 @concert = Concert.find(params[:id])
  	 @artists = @concert.artists
  end

  def index
  	@concerts=Concert.where(["date > ? AND date < ? AND category = ?", '20130824', '20130902', 'concert'])
  	@abonnement=Concert.where(["date > ? AND category = ?", Time.now, 'abonnement'])
  end

end
