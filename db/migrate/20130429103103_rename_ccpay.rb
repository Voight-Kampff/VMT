class RenameCcpay < ActiveRecord::Migration
  def up
  	rename_column :orders, :ccpay_id, :ccpayment_id
  	rename_column :orders, :bankpay_id, :bankpayment_id
  	rename_column :orders, :cashpay_id, :cashpayment_id
  	remove_column :orders, :price
  end

  def down
  end
end
