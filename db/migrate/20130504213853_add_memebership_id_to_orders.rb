class AddMemebershipIdToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :membership_id, :integer
  	remove_column :orders, :ccpayment_id, :integer
  	remove_column :orders, :bankpayment_id, :integer
  	remove_column :orders, :cashpayment_id, :integer
  end
end
