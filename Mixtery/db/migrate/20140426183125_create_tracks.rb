class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :artist_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
