class CreateNamecards < ActiveRecord::Migration
  def change
    create_table :namecards do |t|
      t.datetime :date
      t.date :birthday
      t.string :name
      t.string :company
      t.string :position
      t.string :country
      t.string :address
      t.string :phone
      t.string :email
      t.string :postcard
      t.string :cardnumber

      t.timestamps null: false
    end
  end
end
