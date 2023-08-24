class Renter::ProfilesController < ApplicationController
  before_action :authenticate_user!

  # def show
  #   @user = current_user
  #   @rented_books = Book.joins(:reservations).where(reservations: { renter: @user }).distinct
  #   @reservations = @user.reservations.includes(:book)
  # end
end
