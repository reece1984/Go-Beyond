class RemoveUserFromChallenges < ActiveRecord::Migration
  def up
    remove_column :challenges, :user_id
  end

  def down
    add_column :challenges, :user_id, :integer
  end
end
