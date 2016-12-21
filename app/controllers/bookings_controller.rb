class BookingsController < ApplicationController
  def new
    #passenger count
    @passenger_count = params[:passengers]

    #flight id
  	@flight_id = params[:flight_id]

    #display info
  	@flight = Flight.find(@flight_id)
  	@from_airport = Airport.find(@flight.from_airport)
  	@to_airport = Airport.find(@flight.to_airport)

    @booking = Booking.new(flight_id: params[:flight_id])

    @passenger_count.to_i.times do
      @booking.passengers.build
    end

  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = Flight.find(@booking.flight_id)
  end

  def all
    @bookings = Booking.all
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end

end