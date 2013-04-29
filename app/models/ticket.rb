class Ticket < ActiveRecord::Base
  attr_accessible :order_id, :normal, :student, :concert_id
  belongs_to :order
  belongs_to :concert
end
