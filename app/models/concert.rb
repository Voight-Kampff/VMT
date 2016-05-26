class Concert < ActiveRecord::Base
  default_scope  { order('date ASC') }
  serialize :playlist, Array
  attr_accessible :date, :description, :head, :subhead, :shortname, :playlist, :category
  has_many :artists
  has_many :tickets
  has_many :seats

  #validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]


  attr_accessible :image1, :image2, :front #paperclip attributes 

  #front: images that will appear on program page
  has_attached_file :front, styles: {
  		thumb: '260>x260'
  },
  :url => ':s3_alias_url',
  :s3_host_alias => 'photos.musicales-tannay.ch'

  #image 1 and 2, that will appear on dedicated page
  has_attached_file :image1, styles: {
  		full: '570>x260'
  },
  :url => ':s3_alias_url',
  :s3_host_alias => 'photos.musicales-tannay.ch'

  has_attached_file :image2, styles: {
  		full: '570>x260'
  },
  :url => ':s3_alias_url',
  :s3_host_alias => 'photos.musicales-tannay.ch'



  private
  	
  
end
