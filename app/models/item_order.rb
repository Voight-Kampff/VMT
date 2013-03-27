class ItemOrder < ActiveRecord::Base
  belongs_to :Order
  has_one :Concert
  has_one :Membre
  attr_accessible :quantity
end
