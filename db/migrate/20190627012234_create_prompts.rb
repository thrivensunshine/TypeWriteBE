class CreatePrompts < ActiveRecord::Migration[5.2]
  def change
    create_table :prompts do |t|
      t.string :emotion
      t.string :setting
      t.string :event
      t.string :genre
      t.integer :timed
      t.integer :word_count
      t.belongs_to :prompt, foreign_key: true

      t.timestamps
    end
  end
end
