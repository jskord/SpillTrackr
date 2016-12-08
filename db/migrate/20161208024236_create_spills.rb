class CreateSpills < ActiveRecord::Migration[5.0]
  def change
    create_table :spills do |t|
      t.string :IncidentURL
      t.date :DateReported
      t.date :DateIncident
      t.string :County
      t.float :Latitude
      t.float :Longitude
      t.string :Contaminant
      t.integer :Volume
      t.string :Units
      t.string :Contained
      t.integer :user_id

      t.timestamps
    end
  end
end
