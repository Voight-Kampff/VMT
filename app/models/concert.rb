class Concert < ActiveRecord::Base
  attr_accessible :date, :name, :price
  has_many :quant
end
