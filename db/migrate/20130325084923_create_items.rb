class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :Number
      t.integer :NumberEtu

      t.integer :order_id

      t.timestamps
    end
  end
end
