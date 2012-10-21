class Challenge < ActiveRecord::Base
  attr_accessible :completion_date, :contributor_id, :creator_id, :user_id, :description, :duration, :status, :title
  belongs_to :creator, :class_name => 'User'
  belongs_to :contributor, :class_name => 'User'

  default_scope order: 'challenges.created_at DESC'

  def to_s
    name
  end
end
