class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :brand
      t.date :expiration_date
      t.string :product_type
      t.integer :owner_id

      t.timestamps
    end
  end
end
