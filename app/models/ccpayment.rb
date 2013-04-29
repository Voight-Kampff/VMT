class Ccpayment < ActiveRecord::Base
  attr_accessible :name, :order_id, :paymill_card_token, :paymill_id
  belongs_to :order
end
