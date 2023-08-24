class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new()
  end

  def create
    @book = Book.new(reservation_params)
    if @book.save
        redirect_to books_path
    else
        render :new, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:begin_date, :end_date, :status, :total_price)
  end
end
