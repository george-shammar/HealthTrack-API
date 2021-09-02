class CreateTrackers < ActiveRecord::Migration[6.1]
  def change
    create_table :trackers do |t|
      t.integer :blood_pressure
      t.integer :blood_glucose
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
