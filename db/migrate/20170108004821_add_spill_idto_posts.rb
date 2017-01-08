class AddSpillIdtoPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :spill_id, :integer
  end
end
