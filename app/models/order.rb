class Order < ActiveRecord::Base
	attr_accessible :name, :email, :amount, :paymill_id, :paymill_card_token, :item, :quants_attributes
  belongs_to :order
	has_many :quants, :dependent => :destroy
	accepts_nested_attributes_for :quants

	attr_accessor :paymill_card_token
  
  	def save_with_payment
    	if valid?
	      #client = Paymill::Client.create email: 'test@example.com', description: 'Client test'
	      #client = Paymill::Client.create email: email, description: name
	      #payment = Paymill::Payment.create token: paymill_card_token #, client: client.id
	      #subscription = Paymill::Subscription.create offer: order.paymill_id, client: client.id, payment: payment.id  , client: client.id
	      order = Paymill::Transaction.create amount: amount, currency:'CHF', token: paymill_card_token, description: 'Testing paymill-ruby'
	      self.paymill_id = order.id
	      save!
    	end
  	rescue Paymill::PaymillError => e
	    logger.error "Paymill error while creating customer: #{e.message}"
	    errors.add :base, "There was a problem with your credit card. Please try again."
	    false
	end

end
