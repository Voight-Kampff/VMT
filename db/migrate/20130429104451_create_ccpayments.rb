class CreateCcpayments < ActiveRecord::Migration
  def change
    create_table :ccpayments do |t|
      t.string :name
      t.integer :order_id
      t.integer :paymill_id
      t.integer :paymill_card_token

      t.timestamps
    end
  end
end
