class AddGroupToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :group_id, :integer
  end
end
