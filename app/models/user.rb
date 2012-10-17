class User < ActiveRecord::Base
  attr_accessible :contributor_id, :creator_id, :name
end
