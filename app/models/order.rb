class Order < ApplicationRecord
    belongs_to :vehicle ,optional: true
    geocoded_by :address
    after_validation :geocode
end
