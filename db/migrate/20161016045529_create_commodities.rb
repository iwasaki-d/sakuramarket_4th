class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :name, null:false
      t.string :description
      t.integer :price, null:false, default:0
      t.decimal :position, null:false, default:0
      t.boolean :enabled_view, null:false, default:false

      t.timestamps null: false
    end
  end
end
