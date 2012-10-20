class Recommendation < ActiveRecord::Base
  attr_accessible :description, :receiver_id, :recommender_id

 belongs_to :recommender, :class_name => 'User'
 belongs_to :receiver, :class_name => 'User'

 default_scope order: 'recommendations.created_at DESC'
end
