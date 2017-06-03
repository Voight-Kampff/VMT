class AddColumnsToConcerts < ActiveRecord::Migration
  def change
  	add_column :concerts, :free, :boolean
  	add_column :concerts, :not_numbered, :boolean
  end
end
