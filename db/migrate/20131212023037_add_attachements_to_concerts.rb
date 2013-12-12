class AddAttachementsToConcerts < ActiveRecord::Migration
  def self.up
  	add_attachment :concerts, :front
  	add_attachment :concerts, :image1
  	add_attachment :concerts, :image2
  end

  def self.down
  	remove_attachment :concerts, :front
  	remove_attachment :concerts, :image1
  	remove_attachment :concerts, :image2
  end
end
