class OrdersController < ApplicationController
	
	def new
		@order= Order.new
		quant = @order.quants.build
		

	end 

	def create
		@order = Order.new(params[:order])
		if @order.save
			render 'address', :notice => "Thank you for your purchase"
	    else
	  		render action: "new" 
	    end
  	end

  	def edit
  		@order = Order.find(params[:id])
    end

    def update
  		@order = Order.find(params[:id])
  		if @order.update_attributes(params[:order]) && params[:pay_cc]
    		render action: 'paycc'
   		elsif @order.update_attributes(params[:order]) && params[:pay_bank]
    		render action: 'paybank'
    	else
    		render :new
  		end
    end

    def address
    	@order = Order.find(params[:id])
    	if @order.update_attributes(params[:order]) && params[:pay_cc]
    		render action: 'paycc'
   		elsif @order.update_attributes(params[:order]) && params[:pay_bank]
    		render action: 'paybank'
    	else
    		render :new
  		end
    end

    def paycc
    	if @order.save_with_payment
      		redirect_to @order, :notice => "Thank you for subscribing!"
    	else
      		render :new
    end
    end

    def paybank
    end
	
end
