class AddForeignKey < ActiveRecord::Migration
  def change
  	add_foreign_key :seats, :reservations, column: :reservation_id
  end
end
