class ChangeTokenFormat < ActiveRecord::Migration
  def up
  	change_column :ccpayments, :paymill_card_token, :string
  end

  def down
  	change_column :ccpayments, :paymill_card_token, :integer
  end
end
