class ChangeBankpayName < ActiveRecord::Migration
  def up
  	change_table :orders do |t|
  		t.rename :cash_pay, :cashpay_id
  	end
  end

  def down
  end
end
