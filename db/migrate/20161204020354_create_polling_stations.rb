class CreatePollingStations < ActiveRecord::Migration[5.0]
  def change
    create_table :polling_stations do |t|
      t.belongs_to :sub_sector, foreign_key: true
      t.string :num_pollstat
      t.string :name

      t.timestamps
    end
  end
end
