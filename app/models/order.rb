class Order < ApplicationRecord
    belongs_to :vehicle ,optional: true
    geocoded_by :address
    after_validation :geocode
    
    
    
#     def self.customer_number_if_exists(customer_number)
#     record = Order.select(:customer_number).find_by(customer_number)
#     if record
#       record.customer_number
#     else
#       nil # explicit nil so other developers know exactly what's going on
#     end
#   end
end
