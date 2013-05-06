class AddSecureCodeToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :code, :string
  end
end
