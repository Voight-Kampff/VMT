class Seat < ActiveRecord::Base
	belongs_to :concert
	has_one :reservation
end
