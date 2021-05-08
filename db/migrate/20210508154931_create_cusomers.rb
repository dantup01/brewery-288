class CreateCusomers < ActiveRecord::Migration[6.1]
  def change
    create_table :cusomers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :city
      t.string :county
      t.string :post_code

      t.timestamps
    end
  end
end
