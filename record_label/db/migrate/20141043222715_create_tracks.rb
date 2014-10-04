class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :seconds
      t.date :released_on
      t.references :band, index: true

      t.timestamps
    end
  end
end
