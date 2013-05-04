class StaticController < ApplicationController

	def home
	end

	def programme
	end

	def presse
	end

	def association
	end

	def contact
	end

	def status
	end

	def arthus
	end

	def ophelie
	end

	def intermezzo
	end
	
	def nemanja
	end

	def khatia
	end

	def succes
	    unless cookies.signed[:order_id].nil?
	      @order = Order.find(cookies.signed[:order_id])
	      	unless @order.ccpayment.nil?
	      		render 'succes'
	      	end
	    else
	      redirect_to '/billetterie'
	    end
  	end

end
