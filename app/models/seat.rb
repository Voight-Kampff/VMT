class Seat < ActiveRecord::Base
	belongs_to :concert
	has_one :reservation
	has_one :order, :through => :reservation

	default_scope { order('id ASC') }
end
