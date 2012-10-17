class User < ActiveRecord::Base
  attr_accessible :name, :creator_id, :contributor_id
  has_many :ideas, :class_name => 'Challenge', :foreign_key => 'creator_id'
  has_many :contributions, :class_name => 'Challenge', :foreign_key => 'contributor_id'
  
  has_one :profile

end
