class CreateMembres < ActiveRecord::Migration
  def change
    create_table :membres do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
