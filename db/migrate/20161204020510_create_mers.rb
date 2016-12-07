class CreateMers < ActiveRecord::Migration[5.0]
  def change
    create_table :mers do |t|
      t.belongs_to :polling_station, foreign_key: true
      t.string :num_mer
      t.string :name

      t.timestamps
    end
  end
end
