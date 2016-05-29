class ReservationsController < ApplicationController


	def new
		@order = Order.find(cookies[:order_id])
		@concerts=Concert.find(44) #Concert.where(:date => Concert.find(44).date..Concert.find(51).date) & Concert.where('date >?', Time.now)
		@reservation=Reservation.new
		@seats= Seat.all
		@rows=["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S"]

	end

	def create
		@reservation=Reservation.new(params[:reservation])
		@order = Order.find(cookies[:order_id])
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
		@order = Order.find(cookies[:order_id])
		Seat.find(seat_id).reservation.destroy
		respond_to do |format|
			format.html { render nothing: true } 
			format.js { } 
		end
	end

end
