class Photo < ActiveRecord::Base

	attr_accessible :image
	attr_accessible :gallery

	has_attached_file :image, styles: {
		thumb: '158x110'
	},
	:url => ':s3_alias_url',
    :s3_host_alias => 'photos.musicales-tannay.ch'

    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
    
end
