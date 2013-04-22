class Concert < ActiveRecord::Base
  attr_accessible :date, :description, :head, :subhead
  has_many :artists
end
