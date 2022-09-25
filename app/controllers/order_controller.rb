class OrderController < ApplicationController
before_action :authenticate_user!
before_action :non_purchased_reservation, only: [:index, :create]

  def index
    @order_form = OrderForm.new
  end

  def create
    @order_form = OrderForm.new(order_params)
    if @order_form.valid?
      #pay_reservation
      @order_form.save
      redirect_to root_path
    else
      render :index
    end
  end

  private

  def order_params
    params.require(:order_form).permit(:post_code, :address, :city, :house_number, :building_name, :phone_number).merge(user_id: current_user.id, reservation_id: params[:reservation_id], token: params[:token])
  end

  def non_purchased_reservation
    @reservation = reservation.find(params[:reservation_id])
    redirect_to root_path if current_user.id == @reservation.user_id || @reservation.order.present?
  end

end
