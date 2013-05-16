class OrdersController < ApplicationController
 
  def create
  	@order = Order.new(params[:order])
    @tickets=@order.tickets
    if @order.save
      d = @order.tickets.where("normal = ? AND student=?",0,0)
      d.each do |dd|
        dd.delete
      end
      cookies.signed[:order_id] = @order.id
      redirect_to :action => "index"
    else
      redirect_to '/billetterie', :flash => { :danger => "Votre commande contient #{@order.errors.count} erreur(s). Merci de ressayer" }
    end
  end

  def new
    @concerts=Concert.all(:conditions => ["date > ?", Time.now])
    @members=Concert.all(:conditions => ["category = ?", 'membre'])
    @order = Order.new
    @order.tickets.build
  end

  def show
    @order = Order.find_by_code(params[:id])
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
