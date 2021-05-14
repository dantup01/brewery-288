class RenameCustomersTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :customer, :customers
  end
end
