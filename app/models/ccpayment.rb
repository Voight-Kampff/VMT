class Ccpayment < ActiveRecord::Base
  attr_accessible :name, :order_id, :paymill_card_token, :paymill_id
  belongs_to :order


  def save_with_payment
    if valid?
        order = Paymill::Transaction.create amount: self.order.total, currency:'CHF', token: paymill_card_token, description: "#{self.order.id}, #{self.order.email}, #{self.order.name}"
        self.paymill_id = order.id
        save!
    end
  rescue Paymill::PaymillError => e
    logger.error "Paymill error while creating customer: #{e.message}"
    errors.add :base, "There was a problem with your credit card. Please try again."
    false
  end


end
