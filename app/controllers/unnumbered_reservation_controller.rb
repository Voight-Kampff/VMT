class UnnumberedReservationController < ApplicationController


	def new
		@order = Order.find(cookies.signed[:order_id])
		@concert=Concert.find_by_id(params[:concert_id])
		@reservation=@order.unnumbered_reservations.build
	end

	def create
		@reservation=UnnumberedReservation.new(params[:unnumberd_reservation])
		@order = Order.find(cookies.signed[:order_id])
		@reservation.order_id=@order.id

		if @reservation.save
		end
		respond_to do |format|
			format.html { } 
			format.js { } 
    	end
	end


end
