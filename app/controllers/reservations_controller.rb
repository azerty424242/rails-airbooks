class ReservationsController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.book = @book
    @reservation.renter = current_user
    @reservation.status = "pending"
    @reservation.total_price = calcul
    if @reservation.save!
      redirect_to books_path
    else
      render :show, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:begin_date, :end_date, :status, :total_price)
  end

  def calcul
    @book = Book.find(params[:book_id])
    (@reservation.end_date - @reservation.begin_date) * @book.price_per_day
  end
end
