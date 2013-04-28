class OrdersController < ApplicationController
  def create
    @concerts=Concert.all
  	@order = Order.new(params[:order])
    if @order.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @concerts=Concert.all
    @order = Order.new
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
