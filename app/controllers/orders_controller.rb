class OrdersController < ApplicationController
  def create
  	@order = Order.new(params[:order])
    @tickets=@order.tickets
    if @order.save
      cookies.signed[:order_id] = @order.id
      redirect_to :action => "index"
    else
      render 'new'
    end
  end

  def new
    @concerts=Concert.all
    @order = Order.new
    @order.tickets.build
  end

  def show
  end

  def index
    unless cookies.signed[:order_id].nil?
      @order = Order.find(cookies.signed[:order_id])
      @tickets=@order.tickets
    else
      redirect_to '/billetterie'
    end
  end

  def edit
  end

  def destroy
  end
end
