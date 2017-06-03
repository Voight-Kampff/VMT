class ChangeArtistBioType < ActiveRecord::Migration
  def up
  	change_column :artists, :bio, :text
  end

  def down
  end
end
