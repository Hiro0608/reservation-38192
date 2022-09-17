class ReservationsController < ApplicationController
  
  def index
    @reservations = Reservation.all
    @reservation = Reservation.new
  end
end
  
