class Reservation < ActiveRecord::Base

	belongs_to :order
	belongs_to :seat

	validate :ensure_seat_is_free, on: :create
	validate :ensure_seat_belongs_to_order, on: :destroy

	#not required due to the way associations are set up?
	def ensure_seat_is_free
		seat=Seat.find(seat_id)
	 	unless(seat.reservation==nil)
	 		self.errors.add(:alert, "Seat is already taken!")
	 	end
	end

	def ensure_seat_belongs_to_order
		unless(self.order==@order)
		self.errors.add(:alert,"Not your order")
		end
	end


end
