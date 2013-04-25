class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
    	t.integer :number
    	t.integer :number_etu
    	t.integer :order_id
    	t.integer :concert_id

      t.timestamps
    end
  end
end
