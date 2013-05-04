class AddDefaultValueToTickets < ActiveRecord::Migration
  def change
  	change_column :tickets, :normal, :integer, :default => 0
  	change_column :tickets, :student, :integer, :default => 0
  end
end
