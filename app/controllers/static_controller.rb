class StaticController < ApplicationController

	before_filter :authenticate_pr!, :only => [:espacepresse]

	def Y0yNFY88
		respond_to do |format|
			format.html { render "static/Y0yNFY88", :layout => false  }
		end
	end

	def home
	end

	def programme
	end

	def presse
	end

	def association
	end

	def billetterie
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

	def espacepresse
	end

	def cge
	end

	def succes
	    unless cookies.signed[:order_id].nil?
	      @order = Order.find(cookies.signed[:order_id])
	      	unless @order.ccpayment.nil?
	      		render 'succes'
	      		cookies.delete(:order_id)
	      	end
	    else
	      redirect_to '/billetterie'
	    end
  	end

end
