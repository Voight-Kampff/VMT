class Order < ActiveRecord::Base
  attr_accessible :NPA, :Ville, :bankpay_id, :cash_pay, :ccpay_id, :email, :name, :price, :street, :released
  has_many :items
  accepts_nested_attributes_for :items
end
