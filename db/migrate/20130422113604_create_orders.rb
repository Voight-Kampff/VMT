class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.string :street
      t.string :NPA
      t.string :Ville
      t.boolean :released
      t.integer :price
      t.integer :ccpay_id
      t.integer :bankpay_id
      t.integer :cash_pay

      t.timestamps
    end
  end
end
