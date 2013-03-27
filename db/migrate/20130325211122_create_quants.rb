class CreateQuants < ActiveRecord::Migration
  def change
    create_table :quants do |t|
      t.integer :normal
      t.integer :student
      t.integer :concert_id
      t.integer :membre_id
      t.integer :order_id

      t.timestamps
    end
    add_index :quants, :order_id
  end
end
