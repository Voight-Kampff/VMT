class Concert < ActiveRecord::Base
  serialize :playlist, Array
  attr_accessible :date, :description, :head, :subhead, :shortname, :playlist, :price
  has_many :artists
  has_many :items
  
end
