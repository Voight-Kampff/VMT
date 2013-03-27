class CreateItemOrders < ActiveRecord::Migration
  def change
    create_table :item_orders do |t|
      t.integer :quantity
      t.references :Order
      t.references :Concert
      t.references :Membre

      t.timestamps
    end
    add_index :item_orders, :Order_id
    add_index :item_orders, :Concert_id
    add_index :item_orders, :Membre_id
  end
end
