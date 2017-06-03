class Artist < ActiveRecord::Base
  default_scope  { order('created_at ASC') }

  belongs_to :concert
end
