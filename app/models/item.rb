class Item < ActiveRecord::Base
  attr_accessible :Number, :NumberEtu

  belongs_to :order
end
