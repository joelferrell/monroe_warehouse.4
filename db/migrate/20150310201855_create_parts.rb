class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.integer :part_number
      t.text :part_description
      t.decimal :unit_price
      t.integer :unit_quantity
      t.decimal :parts_total
      t.references :work_order, index: true

      t.timestamps
    end
  end
end
