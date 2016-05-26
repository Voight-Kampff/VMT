class ArtistsController < ApplicationController

    before_filter :authenticate_user!, :only => [:new]

	def new
		@artist = Artist.new
        @concert = Concert.all
	end

	def create
		@artist = Artist.new(params[:artist])
		
    	if @artist.save
        	redirect_to 'artists/new', notice: "L'artiste à été ajouté avec succès" 
    	else
        	render action: "new"
      	end
    end

    def index
        
    end

end
