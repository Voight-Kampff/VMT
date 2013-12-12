class ConcertsController < ApplicationController

	before_filter :authenticate_admin_user!, :only => [:new]

  def show
  	 @concert = Concert.find(params[:id])
  	 @artists = @concert.artists
  end

  def index
  	@concerts=Concert.where(["date > ? AND date < ? AND category = ?", '20130824', '20130902', 'concert'])
  	@abonnement=Concert.where(["date > ? AND category = ?", Time.now, 'abonnement'])
  end

  def new
  	@concert=Concert.new
  end

  def create
  	@concert= Concert.new(params[:concert])

  		if @concert.save
        	redirect_to @concert, notice: 'Le concert à été ajouté avec succès.'
    	else
        	render action: "new"
      	end
  end

end
