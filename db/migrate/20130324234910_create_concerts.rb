class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :name
      t.datetime :date
      t.integer :price

      t.timestamps
    end
  end
end
