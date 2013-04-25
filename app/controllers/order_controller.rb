class OrderController < ApplicationController
  def create
    @concerts=Concert.all
  	@order = Order.new
  	render 'order/new'
  end

  def new
    @concerts=Concert.all
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
