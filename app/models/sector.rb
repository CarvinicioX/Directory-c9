class Sector < ApplicationRecord
  has_many :sub_sectors
  belongs_to :municipality
end
