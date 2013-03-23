class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.integer :ammount
      t.string :paymill_id
      t.string :paymill_card_token

      t.timestamps
    end
  end
end
