class Reservation < ActiveRecord::Base
	attr_accessible :order_id, :seat_id
	belongs_to :order
	belongs_to :seat
end
