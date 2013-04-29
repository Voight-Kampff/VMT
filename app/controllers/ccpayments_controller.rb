class CcpaymentsController < ApplicationController

	def new
		@order = Order.find(cookies.signed[:order_id])
		@ccpayment = @order.build_ccpayment
	end

	def create
	end

	def show
	end

	def edit
	end

	def delete
	end

end
