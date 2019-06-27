class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.text :bio
      t.string :quirk
      t.string :mood
      t.belongs_to :prompt, foreign_key: true

      t.timestamps
    end
  end
end
