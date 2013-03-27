class AddTicketGratuitToMembers < ActiveRecord::Migration
  def change
  	add_column :membres, :tickets, :string
  end
end
