class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :user, index: true
      t.string :shipping_name
      t.string :shipping_email
      t.string :shipping_postal_code
      t.string :shipping_address

      t.date :delivery_day
      t.string :delivery_time_string

      t.integer :settlement_fee, null: false, default: 0
      t.integer :shipping_fee, null: false, default: 0
      t.integer :tax, null: false, default: 0
      t.integer :commodities_subtotal, null: false, default: 0
      t.integer :total, null: false, default: 0

      t.boolean :ordered, null: false, default: false

      t.timestamps null: false
    end
  end
end
