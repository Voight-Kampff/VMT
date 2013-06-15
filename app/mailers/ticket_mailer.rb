class TicketMailer < ActionMailer::Base
  default from: "Billetterie@musicales-tannay.ch"

  def ticket(order)
  	@order = order
    @tickets=@order.tickets
  	@qr = RQRCode::QRCode.new("vmt2.herokuapp.com/orders/#{@order.code}")

	png = @qr.to_img
	png.resize(200,200).save("#{@order.code}.png")
	attachments.inline["#{@order.code}.png"] =File.read("#{@order.code}.png")

  	mail(:to => order.email, :subject => "Vos billets pour les variations musicales de Tannay")
  end

  def payment_info(order)
  	@order = order
    @tickets=@order.tickets

  	mail(:to => order.email, :bcc => AdminUser.all.map(&:email), :subject => "Payement de vos billets des variations musicales de Tanany")
    #mail(:to => "b.fournier@musicales-tannay.ch", :subject => "Nouveau paiement par virement bancaire")
    #mail(:to => "elwa.hauser@bluewin.ch", :subject => "Nouveau paiement par virement bancaire")
    #mail(:to => "valfells@gmail.com", :subject => "Nouveau paiement par virement bancaire")
  end


end