class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :name
      t.integer :price
      t.string :avantage

      t.timestamps
    end
  end
end
