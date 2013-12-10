class Photo < ActiveRecord::Base

	attr_accessible :image
	attr_accessible :gallery

	has_attached_file :image, styles: {
		thumb: '158x110'
	}
end
