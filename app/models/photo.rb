class Photo < ActiveRecord::Base

	attr_accessible :image
	attr_accessible :gallery

	has_attached_file :image, styles: {
		thumb: '158x110'
	},
	:path => ':/photos/#{self.gallery}/:style/:filename',
	:url => ':s3_alias_url',
    :s3_host_alias => 'photos.musicales-tannay.ch'
end
