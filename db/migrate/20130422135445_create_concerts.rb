class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.datetime :date
      t.string :head
      t.string :subhead
      t.text :description

      t.timestamps
    end
  end
end
