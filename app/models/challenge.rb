class Challenge < ActiveRecord::Base
  attr_accessible :completion_date, :contributor_id, :creator_id, :description, :duration, :status, :title, :user_id
end
