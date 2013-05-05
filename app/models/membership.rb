class Membership < ActiveRecord::Base
  attr_accessible :name, :price, :avantage
  has_many :orders
end
