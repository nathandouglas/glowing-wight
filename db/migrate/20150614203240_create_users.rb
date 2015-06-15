class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.integer :type
      t.string :phone
      t.string :street
      t.integer :zip

      t.timestamps null: false
    end
  end
end
