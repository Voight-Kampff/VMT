class AddMemebershipIdToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :membership_id, :integer
  	remove_column :orders, :ccpayment_id
  	remove_column :orders, :bankpayment_id
  	remove_column :orders, :cashpayment_id
  end
end
