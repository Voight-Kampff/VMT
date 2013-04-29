class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
    	t.integer :normal
		t.integer :student
    	t.integer :order_id
    	t.integer :concert_id
      t.timestamps
    end
  end
end
