class TicketMailer < ActionMailer::Base
  default :from => "Billetterie@musicales-tannay.ch"

  def ticket(order)
  	@order = order
  	@qr = RQRCode::QRCode.new("musicales-tannay.ch/orders/#{@order.code}/validate")

	  png = @qr.to_img
	  png.resize(200,200).save("#{@order.code}.png")
	  attachments.inline["#{@order.code}.png"] =File.read("#{@order.code}.png")

    mail(:to => @order.email, :from => "Billetterie@musicales-tannay.ch", :subject => "Vos billets pour les variations musicales de Tannay")
  end


end