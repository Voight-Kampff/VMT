class AddShortnameToConcerts < ActiveRecord::Migration
  def change
  	add_column :concerts, :shortname, :string
  end
end
