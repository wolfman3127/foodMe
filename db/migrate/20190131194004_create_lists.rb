class CreateLists < ActiveRecord::Migration[5.1]
  def change
    create_table :lists do |t|
      t.string :name
      t.text :ingredients
      t.boolean :healthy
      t.string :username
      t.string :email

      t.timestamps
    end
  end
end
