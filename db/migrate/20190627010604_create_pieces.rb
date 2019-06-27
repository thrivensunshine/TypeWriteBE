class CreatePieces < ActiveRecord::Migration[5.2]
  def change
    create_table :pieces do |t|
      t.text :body
      t.text :note
      t.integer :likes
      t.boolean :bookmarked
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
