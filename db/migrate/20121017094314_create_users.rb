class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :creator_id
      t.integer :contributor_id

      t.timestamps
    end
  end
end
