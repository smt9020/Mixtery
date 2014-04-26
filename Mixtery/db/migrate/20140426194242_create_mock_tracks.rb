class CreateMockTracks < ActiveRecord::Migration
  def change
    create_table :mock_tracks do |t|
      t.string :name
      t.integer :track_id

      t.timestamps
    end
  end
end
