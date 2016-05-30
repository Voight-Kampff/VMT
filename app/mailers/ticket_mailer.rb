class TicketMailer < ActionMailer::Base
  default :from => "Billetterie@musicales-tannay.ch"

  def ticket(order)
  	@order = order

    @reservations=@order.reservations

    @reservations.each do |reservation|

      @qr = RQRCode::QRCode.new("musicales-tannay.ch/orders/#{@order.code}/validate")

    png = @qr.to_img
    png.resize(200,200).save("#{@order.code}.png")
    qr_image = MiniMagick::Image.open("#{@order.code}.png")

    ticket_image = MiniMagick::Image.open("http://photos.musicales-tannay.ch/tickets/ticket_#{reservation.seat.concert_id}.png")
    column_image = MiniMagick::Image.open("http://photos.musicales-tannay.ch/tickets/#{reservation.seat.column}.png")
    row_image = MiniMagick::Image.open("http://photos.musicales-tannay.ch/tickets/#{reservation.seat.row}.png")

    ticket_with_code = ticket_image.composite(qr_image) do |c|
        c.compose "Over"    # OverCompositeOp
        c.geometry "+500+100" # copy second_image onto first_image from (500, 100)
    end

    ticket_with_code_and_column = ticket_with_code.composite(column_image) do |c|
        c.compose "Over"    # OverCompositeOp
        c.geometry "+350+310" # copy second_image onto first_image from (500, 100)
    end

    result = ticket_with_code_and_column.composite(row_image) do |c|
        c.compose "Over"    # OverCompositeOp
        c.geometry "+150+310" # copy second_image onto first_image from (500, 100)
    end

    result.write("reservation_#{reservation.id}.png")

    attachments.inline["reservation_#{reservation.id}.png"] =File.read("reservation_#{reservation.id}.png")
  end

    mail(:to => @order.email, :from => "Billetterie@musicales-tannay.ch", :subject => "Vos billets pour les variations musicales de Tannay")
  end


end