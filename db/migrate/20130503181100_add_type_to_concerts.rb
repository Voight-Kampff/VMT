class AddTypeToConcerts < ActiveRecord::Migration
  def change
  	add_column :concerts, :category, :string
  end
end
