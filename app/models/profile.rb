class Profile < ActiveRecord::Base
  attr_accessible :expertise, :role

  belongs_to :user

end
