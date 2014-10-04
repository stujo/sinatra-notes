class CreateAlbumsTracks < ActiveRecord::Migration
  def change
    create_table :albums_tracks, :id => false do |t|
      t.references :album
      t.references :track
    end
    add_index :albums_tracks, [:album_id, :track_id]
    add_index :albums_tracks, :album_id
  end
end
