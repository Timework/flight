class TripsController < ApplicationController
    def index
        @airports = Airport.all.map{ |u| [u.name, u.id]}
        @flight_times = Trip.all.map{ |u| [u.depart]}
        @passengers = [1,2,3,4]
        if !params.nil?
            @results = Trip.where(start: params[:from_airport], end: params[:to_airport])
            @pass = params[:passengers]
        end
    end

end
