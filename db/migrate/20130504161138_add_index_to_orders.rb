class AddIndexToOrders < ActiveRecord::Migration
  def change
  	add_index :orders, :code, unique: true
  end
end
