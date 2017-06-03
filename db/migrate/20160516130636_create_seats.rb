class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.integer :concert_id
      t.integer :column
      t.string :row

      t.timestamps null: false
    end
  end
end
