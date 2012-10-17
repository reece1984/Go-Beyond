class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :role
      t.text :expertise

      t.timestamps
    end
  end
end
