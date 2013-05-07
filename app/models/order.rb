class Order < ActiveRecord::Base
  has_many :tickets
  accepts_nested_attributes_for :tickets
  attr_accessible :tickets_attributes, :NPA, :Ville, :email, :name, :price, :street, :released, :membership_id
  has_one :ccpayment
  belongs_to :membership


  validates :code, uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  #validates :total, :numericality => { :greater_than => 0}
  validates :NPA, presence: true
  validates :street, presence: true
  validates :Ville, presence: true
  validates :name, presence: true


  before_save :total_price_and_code
  #after_save :save_order_id

  private

  	def total_price_and_code
    		t = self.tickets
        if self.membership.nil?
          price= 0
        else
    		  price= self.membership.price
        end
  	  	t.each do |tt|  
          price = price + tt.concert.price*tt.normal + tt.concert.price/2*tt.student 
  		  end
  		self.total = price
      self.code = SecureRandom.urlsafe_base64(5)
  	end

    def to_param
      code
    end

    

end
