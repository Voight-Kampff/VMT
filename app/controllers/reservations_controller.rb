class ReservationsController < ApplicationController


	def new
		@order = Order.find(cookies.signed[:order_id])
		@concert=Concert.find_by_id(params[:concert_id])
		@reservation=@order.reservations.build
		@seats= @concert.seats
		@first_seat = @concert.seats.first
		@last_seat = @concert.seats.last
		@taken_seat_array=Array.new(@last_seat.id)
		@taken_by_user_seat_array=Array.new(@last_seat.id)
		Reservation.where(seat_id: (@first_seat.id..@last_seat.id)).each do |r|
			if r.order_id==@order.id
				@taken_by_user_seat_array[r.seat_id%475]=r.seat_id
			else
				@taken_seat_array[r.seat_id%475]=r.seat_id
			end
		end
		@rows=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S"]

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
			format.js { } 
    	end
	end

	def custom
		seat_id = params[:seat_id]
		@order = Order.find(cookies.signed[:order_id])
		if Seat.find(seat_id).reservation.order==@order
			Seat.find(seat_id).reservation.destroy
			respond_to do |format|
				format.html { render nothing: true } 
				format.js { }
			end
		else
			respond_to do |format|
				format.html { render nothing: true } 
				format.js { render :flash => "error"}
			end
		end
	end

	def cancel
		@order = Order.find(cookies.signed[:order_id])
		@concert=Concert.find_by_id(params[:concert_id])
		Reservations.find()
		redirect_to order_basket_path(@order)
	end

end
