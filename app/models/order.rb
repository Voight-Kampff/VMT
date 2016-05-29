class Order < ActiveRecord::Base

  has_many :tickets, :dependent => :destroy
  accepts_nested_attributes_for :tickets #, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true

  has_many :reservations, :dependent => :destroy

  attr_accessible :tickets_attributes, :NPA, :Ville, :email, :name, :street, :membership_id, :paid, :transfer, :released
  has_one :ccpayment
  belongs_to :membership


  #validates :code, uniqueness: true
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, format: { with: VALID_EMAIL_REGEX }
  #validates :total, :numericality => { :greater_than => 0}
  #validates :NPA, presence: true
  #validates :street, presence: true
  #validates :Ville, presence: true
  #validates :name, presence: true

  #before_validation :total_price_and_code
  #before_save :total_price_and_code
  #after_save :save_order_id


    def total
      reservations=self.reservations
      total=0
      reservations.each do |reservation|
        total=total+reservation.seat.price
      end
      return total
    end

  private
  	def total_price_and_code
    		t = self.tickets
        if self.membership.nil?
          price= 0
        else
    		  price= self.membership.price
        end
  	  	t.each do |tt|  
          price = price + tt.concert.price*tt.normal + 2500*tt.student 
  		  end
  		self.total = price
        if self.code.nil?
          self.code = SecureRandom.urlsafe_base64(5)
        end
  	end

    #def to_param
    #  code
    #end

    

end
