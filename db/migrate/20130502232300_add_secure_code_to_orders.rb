class AddSecureCodeToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :code, :string, :limit => 5
  end
end
