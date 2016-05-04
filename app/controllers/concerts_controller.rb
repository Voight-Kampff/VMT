class ConcertsController < ApplicationController

	before_filter :authenticate_admin_user!, :only => [:new]

  def show
  	 @concert = Concert.find(params[:id])
  	 @artists = @concert.artists
  end

  def index
  	@concerts=Concert.where(["date > ? AND date < ?", Date.today.beginning_of_year, Date.today.end_of_year])
  end

  def programme2011
    @concerts=Concert.where(["date > ? AND date < ?", '20110801', '20110930'])
  end

  def programme2012
    @concerts=Concert.where(["date > ? AND date < ? AND category = ?", '20120801', '20120930', 'concert'])
  end

  def programme2013
    @concerts=Concert.where(["date > ? AND date < ? AND category = ?", '20130824', '20130902', 'concert'])
  end

  def programme2014
    @concerts=Concert.where(["date > ? AND date < ?", '20140801', '20140930'])
  end

  def programme2015
    @concerts=Concert.where(["date > ? AND date < ?", '20150801', '20150930'])
  end

  def programme2016
    
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
