class OrdersController < ApplicationController

  before_filter :authenticate_user!, :only => [:show ]
 
  def create
  	@order = Order.new(params[:order])
    if @order.save
      #emptyticket = @order.tickets.where("normal = ? AND student=?",0,0)
      #emptyticket.each do |item|
      #  item.delete
      #end
      cookies[:order_id] = @order.id
      redirect_to '/reservations/new'
    else
      redirect_to '/orders/new', :flash => { :danger => "Votre commande contient #{@order.errors.count} erreur(s). Merci de ressayer" }
    end
  end

  def new
    @concerts=Concert.find(44) #Concert.where(:date => Concert.find(44).date..Concert.find(51).date) & Concert.where('date >?', Time.now)
    @order = Order.new
    tickets = @order.tickets.build
  end


  def show
    @order = Order.find(params[:id])     #find_by_code(params[:id])
    @tickets=@order.tickets
    @order.update_column(:released, true)
  end

  def index
    unless cookies.signed[:order_id].nil?
      @order = Order.find(cookies.signed[:order_id])
      @tickets=@order.tickets#.where("normal != ? OR student!= ?",0,0)
    else
      redirect_to '/billetterie'
    end
  end

  def edit
  end

  def payment_info_mail
    @order = Order.find(cookies.signed[:order_id])
    @order.update_column(:transfer, true)
    TicketMailer.payment_info(@order).deliver
    redirect_to root_path, :flash => { :success => "Vous recevrez prochainement votre facture par e-mail" }
    cookies.delete(:order_id)
  end

  def destroy
  end



end
