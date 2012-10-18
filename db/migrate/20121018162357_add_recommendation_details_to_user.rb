class AddRecommendationDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :recommender_id, :integer
    add_column :users, :receiver_id, :integer
  end
end
