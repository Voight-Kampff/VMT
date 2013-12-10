class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :gallery
      t.timestamps
    end
  end
end
