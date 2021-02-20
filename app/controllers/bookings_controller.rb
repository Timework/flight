class BookingsController < ApplicationController
    def new
        @booking = Booking.new(trip_id: params[:trip_id], amount_passengers: params[:amount_passengers])
        @booking.amount_passengers.to_i.times { @booking.passengers.build }
        render :new
    end

    def create
        @booking = Booking.create(booking_params)
        if @booking.save
            redirect_to booking_path(@booking)
            @booking.passengers.each do |passenger|
                PassengerMailer.welcome_email(passenger).deliver_now! 
            end
        else
            render :new
        end
    end

    def show
        @booking = Booking.find(params[:id])
    end

    private
    def booking_params
        params.require(:booking).permit(:trip_id, :amount_passengers, :passengers_attributes => [:booking_id, :name, :email])
    end
end
