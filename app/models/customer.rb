class Customer < ApplicationRecord
	has_one :order
	
	geocoded_by :address
    after_validation :geocode
end
