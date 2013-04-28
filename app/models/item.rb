class Item < ActiveRecord::Base
	attr_accessible :order_id, :concert_id, :number, :number_etu
	belongs_to :order
	belongs_to :Concert
end
