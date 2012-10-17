class CreateDevelopments < ActiveRecord::Migration
  def change
    create_table :developments do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.integer :developer_id
      t.integer :mentor_id

      t.timestamps
    end
  end
end
