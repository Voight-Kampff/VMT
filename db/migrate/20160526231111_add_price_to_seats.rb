class AddPriceToSeats < ActiveRecord::Migration
  def change
  	add_column :seats, :price, :integer
  	add_column :seats, :reserved_for_invitation, :boolean
  	add_column :seats, :reserved_for_ticketcorner, :boolean
  	add_column :seats, :reserved_by_email, :boolean
  end
end
