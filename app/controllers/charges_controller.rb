class ChargesController < ApplicationController
	
	def new
		@order = Order.find(cookies.signed[:order_id])
	end

	def create
		# Amount in cents
		@order = Order.find(cookies.signed[:order_id])
	  	@amount = @order.total

		customer = Stripe::Customer.create(
			:email => params[:stripeEmail],
		    :source  => params[:stripeToken]
		)

		charge = Stripe::Charge.create(
			:customer    => customer.id,
			:amount      => @amount,
		    :description => @order.reservations,
		    :currency    => 'chf'
		  )

		@order.generate_code

		TicketMailer.ticket(@order).deliver

		rescue Stripe::CardError => e
			flash[:error] = e.message
	  	redirect_to new_charge_path
		end
end
