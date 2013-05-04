class TicketMailer < ActionMailer::Base
  default from: "Billetterie@musicales-tannay.ch"

  def ticket(order)
  	@order = order

  	@qr = RQRCode::QRCode.new("#{@order.id}.png")

	png = @qr.to_img
	png.resize(200,200).save("#{@order.id}.png")
	attachments.inline["#{@order.id}.png"] =File.read("#{@order.id}.png")

  	mail(:to => order.email, :subject => "Vos billets pour les variations musicales de Tannay")
  end

  def payment_info(order)
  	@order = order


  	mail(:to => order.email, :subject => "Payement de vos billets des variations musicales de Tanany")
  end


end