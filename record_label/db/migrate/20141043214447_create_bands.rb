class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.date :signed_on
      t.references :agent, index: true

      t.timestamps
    end
  end
end
