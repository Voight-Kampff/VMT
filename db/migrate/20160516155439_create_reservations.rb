class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :seat_id
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
