class Booking < ApplicationRecord
    belongs_to :trip
    has_many :passengers
    accepts_nested_attributes_for :passengers
end
