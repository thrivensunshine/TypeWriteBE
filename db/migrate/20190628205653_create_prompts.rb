class CreatePrompts < ActiveRecord::Migration[5.2]
  def change
    create_table :prompts do |t|
      t.string :character
      t.string :phrase
      t.string :setting
      t.string :genre
      t.string :emotion
      t.string :topic
      t.string :incase
      t.boolean :timed
      t.integer :wordcount

      t.timestamps
    end
  end
end
