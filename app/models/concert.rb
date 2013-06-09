class Concert < ActiveRecord::Base
  default_scope order('date ASC')
  serialize :playlist, Array
  attr_accessible :date, :description, :head, :subhead, :shortname, :playlist, :price, :category
  has_many :artists
  has_many :items


  private
  	
  
end
