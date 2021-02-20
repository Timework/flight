class Trip < ApplicationRecord
    belongs_to :from_airport, class_name: "Airport", foreign_key: :start
    belongs_to :to_airport, class_name: "Airport", foreign_key: :end
    has_many :bookings
    has_many :passengers, through: :bookings
end
