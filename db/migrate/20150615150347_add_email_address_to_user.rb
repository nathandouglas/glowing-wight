class AddEmailAddressToUser < ActiveRecord::Migration
  def change
    add_column :users, :emailaddress, :string
  end
end
