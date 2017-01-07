class DeleteUserIdFromSpills < ActiveRecord::Migration[5.0]
  def change
    remove_column :spills, :user_id, :integer
  end
end
