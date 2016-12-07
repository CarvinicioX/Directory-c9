class CreateMunicipalities < ActiveRecord::Migration[5.0]
  def change
    create_table :municipalities do |t|
      t.belongs_to :department, foreign_key: true
      t.string :num_minicip
      t.string :name

      t.timestamps
    end
  end
end
