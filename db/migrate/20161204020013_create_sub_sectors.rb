class CreateSubSectors < ActiveRecord::Migration[5.0]
  def change
    create_table :sub_sectors do |t|
      t.belongs_to :sector, foreign_key: true
      t.string :num_sub_sector
      t.string :name

      t.timestamps
    end
  end
end
