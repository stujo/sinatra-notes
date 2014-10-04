class CreateSuperFans < ActiveRecord::Migration
  def change
    create_table :super_fans do |t|
      t.string :first_name
      t.string :last_name
      t.references :artist, index: true
      t.string :parole_officer

      t.timestamps
    end
  end
end
