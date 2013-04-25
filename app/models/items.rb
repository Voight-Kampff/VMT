class Items < ActiveRecord::Base
	attr_accessible :order_id, :concert_id, :number, :number_etu
	belongs_to :Order
	belongs_to :Concert
end
