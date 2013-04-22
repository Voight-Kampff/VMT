class AddPlaylistToConcerts < ActiveRecord::Migration
  def self.up
  	add_column :concerts, :playlist, :text
  end
end
