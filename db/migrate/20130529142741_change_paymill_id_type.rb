class ChangePaymillIdType < ActiveRecord::Migration
  def up
  	change_column :ccpayments, :paymill_id, :string
  end

  def down
  	change_column :ccpayments, :paymill_id, :integer
  end
end