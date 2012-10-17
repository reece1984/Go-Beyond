class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :users, :developer_id, :integer
    add_column :users, :mentor_id, :integer
  end
end
