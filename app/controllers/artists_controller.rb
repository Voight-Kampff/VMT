class ArtistsController < ApplicationController

    before_filter :authenticate_user!, :only => [:new]

	def new
		@artist = Artist.new
        @concert = Concert.all
	end

	def create
		@artist = Artist.create(artist_params)
		
    	if @artist.save
        	redirect_to 'artists/new', notice: "L'artiste à été ajouté avec succès" 
    	else
        	render action: "new"
      	end
    end

    def index
        
    end

    private 

        def artist_params
            params.require(:artist).permit(:bio,:name,:concert_id)
        end

end
