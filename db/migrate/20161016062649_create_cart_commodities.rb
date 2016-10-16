class CreateCartCommodities < ActiveRecord::Migration
  def change
    create_table :cart_commodities do |t|
      t.references :cart, null:false, index: true
      t.references :commodity, null:false, index: true
      t.integer :quantity, null:false, default:0

      t.timestamps null: false
    end
  end
end
