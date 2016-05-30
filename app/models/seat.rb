class Seat < ActiveRecord::Base
	belongs_to :concert
	has_one :reservation

	default_scope { order('id ASC') }
end
