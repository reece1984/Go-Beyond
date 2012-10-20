class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :creator_id, :contributor_id, :developer_id, :mentor_id, :recommender_id, :receiver_id
  has_many :ideas, :class_name => 'Challenge', :foreign_key => 'creator_id'
  has_many :contributions, :class_name => 'Challenge', :foreign_key => 'contributor_id'
  
  has_many :objectives, :class_name => 'Development', :foreign_key => 'developer_id'
  has_many :mentorings, :class_name => 'Development', :foreign_key => 'mentor_id'

  has_many :recommendations, :class_name => 'Recommendation', :foreign_key => 'recommender_id'
  has_many :receivers, :class_name => 'Recommendation', :foreign_key => 'receiver_id'


  has_one :profile


end
