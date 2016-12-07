json.extract! polling_station, :id, :sub_sector_id, :num_pollstat, :name, :created_at, :updated_at
json.url polling_station_url(polling_station, format: :json)