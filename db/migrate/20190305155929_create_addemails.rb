class CreateAddemails < ActiveRecord::Migration[5.1]
  def change
    create_table :addemails do |t|
      t.string :extraemail
      t.string :currentemail

      t.timestamps
    end
  end
end
