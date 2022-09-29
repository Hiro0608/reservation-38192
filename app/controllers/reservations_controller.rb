class ReservationsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @reservations = Reservation.all
    @reservation = Reservation.new
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @reservation = reservation.find(params[:id])
  end
  
  def update
    @reservation = reservation.find(params[:id])
    @reservation.update params.require(:comment)
  end

  def show
    @reservation = reservation.find(params[:id])
  end

  private
  def reservation_params
    params.require(:reservation).permit(:image, :name, :price, :introduction, :category_id, :status_id, :address_id).merge(user_id: current_user.id)
  end

end


