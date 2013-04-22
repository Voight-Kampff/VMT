class Artist < ActiveRecord::Base
  attr_accessible :bio, :name, :concert_id
  belongs_to :concert
end
