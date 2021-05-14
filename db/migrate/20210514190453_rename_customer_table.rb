class RenameCustomerTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :cusomers, :customer
  end
end
