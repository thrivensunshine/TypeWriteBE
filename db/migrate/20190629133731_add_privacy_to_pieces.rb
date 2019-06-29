class AddPrivacyToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :private, :boolean
  end
end
