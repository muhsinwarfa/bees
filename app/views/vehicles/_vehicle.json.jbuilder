json.extract! vehicle, :id, :distance, :driverName, :plateNumber, :carType, :modelMake, :queue, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)