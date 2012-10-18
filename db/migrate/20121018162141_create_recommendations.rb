class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.text :description
      t.integer :recommender_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
