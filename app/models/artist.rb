class Artist < ActiveRecord::Base
  default_scope order('name DESC')
  attr_accessible :bio, :name, :concert_id
  belongs_to :concert
end
