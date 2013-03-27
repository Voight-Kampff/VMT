class Quant < ActiveRecord::Base
  attr_accessible :concert_id, :membre_id, :normal, :order_id, :student
  belongs_to :order
  belongs_to :concert
  has_one :membre
end
