class AddPaidAndBillToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :paid, :boolean
  	add_column :orders, :transfer, :boolean
  end
end
