class AddForeignKey < ActiveRecord::Migration
  def change
  	add_foreign_key :reservations, :seats
  end
end
