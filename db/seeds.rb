Airport.delete_all
Trip.delete_all

code_list = ["ICN", "HND", "ITM", "DFW"]

code_list.each do |code|
    Airport.create(name: code)
end

Trip.create!(from_airport: Airport.first, to_airport: Airport.second, depart: Date.today, duration: "1 hours" )
Trip.create!(from_airport: Airport.first, to_airport: Airport.second, depart: Date.today, duration: "10 hours" )
Trip.create!(from_airport: Airport.second, to_airport: Airport.third, depart: Date.today, duration: "2 hours" )
Trip.create!(from_airport: Airport.third, to_airport: Airport.fourth, depart: Date.today, duration: "3 hours" )
Trip.create!(from_airport: Airport.fourth, to_airport: Airport.first, depart: Date.today, duration: "4 hours" )