class ReservationsController < ApplicationController


	def new
		@order = Order.find(cookies.signed[:order_id])
		@tickets = @order.tickets
		@reservation=Reservation.new
		@reservation_idex=Reservation.all
		@seats= Seat.all

	end

	def create
		@reservation=Reservation.new(params[:reservation])
		@order = Order.find(cookies.signed[:order_id])
		@reservation.order_id=@order.id
		if @reservation.save
		end
		respond_to do |format|
			format.html { render nothing: true } 
			format.js { } 
    	end
	end

	def show
	end

	def update
	end

	def destroy
		Reservation.find(params[:id]).destroy
		respond_to do |format|
			format.html { render nothing: true } 
			format.js { } 
    	end
	end

	def delete
		Reservation.find(params[:id]).destroy
		respond_to do |format|
			format.html { render nothing: true } 
			format.js { render nothing: true } 
    	end
    	if @reservation.delete
    	end
	end

end
