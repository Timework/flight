class Airport < ApplicationRecord
    has_many :departing_trips, class_name: "Trip", foreign_key: :start, dependent: :destroy
    has_many :arriving_trips, class_name: "Trip", foreign_key: :end, dependent: :destroy
end
