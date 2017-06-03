class AddHeldAndRemoveOldColumnsToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :held, :boolean
  	remove_column :orders, :released
  	remove_column :orders, :transfer
  	remove_column :orders, :total
  	remove_column :orders, :membership_id
  end
end
