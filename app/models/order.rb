class Order < ActiveRecord::Base
  attr_accessible :name, :email, :ammount, :paymill_id, :paymill_card_token
end
