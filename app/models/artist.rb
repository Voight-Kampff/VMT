class Artist < ActiveRecord::Base
  default_scope order('created_at ASC')
  attr_accessible :bio, :name, :concert_id
  belongs_to :concert
end
