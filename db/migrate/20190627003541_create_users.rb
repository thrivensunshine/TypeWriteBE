class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :user_name
      t.string :password
      t.string :avatar
      t.text :bio
      t.text :thoughts

      t.timestamps
    end
  end
end
