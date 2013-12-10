class PhotosController < ApplicationController

	def new
		@photo = Photo.new
	end

	def create
		@photo = Photo.new(params[:photo])
		
    	if @photo.save
        	redirect_to @photo, notice: 'Friend was successfully created.'
    	else
        	render action: "new"
      	end
    end

    def index
    	@photo=photo.last
    end

end
