class FixColumnName < ActiveRecord::Migration
  def up
  	rename_column :orders, :ammount, :amount
  end

  def down
  end
end
