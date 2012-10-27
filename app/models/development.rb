class Development < ActiveRecord::Base
  attr_accessible :description, :developer_id, :mentor_id, :priority, :title

  belongs_to :developer, :class_name => 'User'
  belongs_to :mentor, :class_name => 'User'
  default_scope order: 'developments.created_at DESC'
    validates :title, :description, :presence => true
end
