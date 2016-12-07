class PollingStation < ApplicationRecord
  has_many :colonies
  has_many :mers
  belongs_to :sub_sector
end
