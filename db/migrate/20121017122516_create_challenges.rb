class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :description
      t.integer :duration
      t.date :completion_date
      t.string :status
      t.integer :user_id
      t.integer :creator_id
      t.integer :contributor_id

      t.timestamps
    end
  end
end
