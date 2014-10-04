class CreateStints < ActiveRecord::Migration
  def change
    create_table :stints do |t|
      t.date :start_date
      t.date :end_date
      t.references :band, index: true
      t.references :artist, index: true

      t.timestamps
    end
  end
end
