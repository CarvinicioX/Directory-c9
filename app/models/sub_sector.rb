class SubSector < ApplicationRecord
  has_many :polling_stations
  belongs_to :sector
end
