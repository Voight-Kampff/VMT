class OrderController < ApplicationController
  def create
  	@order = Order.new
  	render 'order/new'
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
