class TicketMailer < ActionMailer::Base
  default :from => "Billetterie@musicales-tannay.ch"

  def ticket(order)
  	@order = order


    mail(:to => @order.email, :from => "Billetterie@musicales-tannay.ch", :bcc => "webmaster@musicales-tannay.ch", :subject => "Votre commande pour les variations musicales de Tannay")
  
  end


end