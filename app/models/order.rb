class Order < ActiveRecord::Base

  has_many :reservations, :dependent => :destroy
  has_many :seats, :through => :reservations



  #validates :code, uniqueness: true
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, format: { with: VALID_EMAIL_REGEX }
  #validates :NPA
  #validates :street
  #validates :ville
  #validates :name


    def total
      reservations=self.reservations
      total=0
      reservations.each do |reservation|
        total=total+reservation.seat.price
      end
      return total
    end

  	def generate_code
        if self.code.nil?
          self.code = SecureRandom.urlsafe_base64(20)
          self.paid = 1
          self.save
        end
  	end

    
    
end
