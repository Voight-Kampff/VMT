class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.integer :concert_id

      t.timestamps
    end
  end
end
