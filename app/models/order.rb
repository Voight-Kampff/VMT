class Order < ActiveRecord::Base
  has_many :tickets
  accepts_nested_attributes_for :tickets
  attr_accessible :tickets_attributes, :NPA, :Ville, :bankpayment_id, :cash_payment, :ccpayment_id, :email, :name, :price, :street, :released
  has_one :ccpayment


  validates :code, uniqueness: true
  #validates :total, :numericality => { :greater_than => 0}


  before_save :total_price_and_code
  before_save :remove_useless_tickets
  #after_save :save_order_id

  private

  	def total_price_and_code
    		t = self.tickets
    		price=0
  	  	t.each do |tt|  
          price = price + tt.concert.price*tt.normal + tt.concert.price/2*tt.student 
  		  end
  		self.total = price
      self.code = SecureRandom.urlsafe_base64(5)
  	end

    def to_param
      code
    end

    def remove_useless_tickets
      t = self.tickets.where("normal = ? AND student=?",0,0)
      t.each do |tt|
        tt.delete
      end
    end

end
