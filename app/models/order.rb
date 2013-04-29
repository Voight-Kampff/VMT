class Order < ActiveRecord::Base
  has_many :tickets
  accepts_nested_attributes_for :tickets
  attr_accessible :tickets_attributes, :NPA, :Ville, :bankpayment_id, :cash_payment, :ccpayment_id, :email, :name, :price, :street, :released
  has_one :ccpayment


  before_save :total_price
  #after_save :save_order_id

  private

	def total_price
  		t = self.tickets
  		price=0
	  	t.each do |tt|
	  		price = price + tt.concert.price*tt.normal + tt.concert.price/2*tt.student
		end
		self.total = price
	end

  def find_order

  end

end
