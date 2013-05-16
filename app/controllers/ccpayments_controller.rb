class CcpaymentsController < ApplicationController

	def new
		@order = Order.find(cookies.signed[:order_id])
		@ccpayment = @order.build_ccpayment
	end

	def create
		@ccpayment = Ccpayment.new(params[:ccpayment])
		@order = Order.find(cookies.signed[:order_id])

		if @ccpayment.save_with_payment
			TicketMailer.ticket(@order).deliver
			@order.update_column(:paid,true)
      		redirect_to '/succes', :flash => { :success => "Merci de votre commande!" }
    	else
      		render :new
    	end
	end

	def show
	end

	def edit
	end

	def delete
	end

end
