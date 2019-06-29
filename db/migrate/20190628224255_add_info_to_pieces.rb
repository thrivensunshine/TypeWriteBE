class AddInfoToPieces < ActiveRecord::Migration[5.2]
  def change
    add_column :pieces, :character, :string
    add_column :pieces, :phrase, :string
    add_column :pieces, :setting, :string
    add_column :pieces, :genre, :string
    add_column :pieces, :emotion, :string
    add_column :pieces, :topic, :string
    add_column :pieces, :incase, :string
  end
end
