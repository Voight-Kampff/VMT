class Concert < ActiveRecord::Base
  serialize :playlist, Array
  attr_accessible :date, :description, :head, :subhead, :shortname, :playlist
  has_many :artists
  
end
