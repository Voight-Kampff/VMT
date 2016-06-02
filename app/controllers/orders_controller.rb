class OrdersController < ApplicationController

  before_filter :authenticate_user!, :only => [:show ]
 
  def create
  	@order = Order.new(params[:order])
    @concerts = Concert.where(:date => Concert.find(44).date..Concert.find(51).date) & Concert.where('date >?', Time.now)
    if @order.save
      cookies.signed[:order_id] = @order.id
      redirect_to new_concert_reservation_path(params[:concert_id])
    else
      redirect_to '/orders/new', :flash => { :danger => "Votre commande contient #{@order.errors.count} erreur(s). Merci de ressayer" }
    end
  end

  def new
    @concerts=Concert.where(:date => Concert.find(44).date..Concert.find(51).date) & Concert.where('date >?', Time.now)
    @order = Order.new
  end


  def show
  end

  def index
  end


  def update
    @order = Order.find(cookies.signed[:order_id])
    if @order.update(params[:order])
      redirect_to '/charges/new'
    else
      render 'basket', :flash => { :danger => "Votre commande contient #{@order.errors.count} erreur(s). Merci de ressayer" }
    end
  end

  def basket
    @order = Order.find(cookies.signed[:order_id])
    @reservations = @order.reservations 
    @concerts=Concert.where(:date => Concert.find(44).date..Concert.find(51).date) & Concert.where('date >?', Time.now)
  end

  def destroy
  end



end
