class Reservation < ActiveRecord::Base
	attr_accessible :order_id, :seat_id
	belongs_to :order
	belongs_to :seat
	belongs_to :concert

	validate :ensure_seat_is_free, on: :create
	validate :ensure_seat_belongs_to_order, on: :destroy

	def ensure_seat_is_free
		seat=Seat.find(seat_id)
		unless(seat.reservation==nil)
			self.errors.add(:alert, "Test")
		end
	end

	def ensure_Seat_belongs_to_order
		unless(self.order==@order)
			self.errors.add(:alert,"Not your order")
		end
	end


end
