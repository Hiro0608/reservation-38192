class ReservationsController < ApplicationController
  
  def index
    @reservations = Reservation.all
    @reservation = Reservation.new
  end
  def new
    @reservation = Reservation.new
  end
  def create
    Reservation.create(reservation_params)
  end
  
  private
  def reservation_params
    params.require(:reservation).permit(:name, :image, :text)
  end

end


