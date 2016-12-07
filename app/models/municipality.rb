class Municipality < ApplicationRecord
  has_many :sectors
  belongs_to :department
end
