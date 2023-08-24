class Owner::ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @reservations = @user.reservations
    @bookmarks = @user.bookmarks
    @rented_books = Book.joins(:reservations).where(reservations: { renter: @user }).distinct
    @owner_books = Book.joins(:reservations).where(reservations: { owner: @user }).distinct
  end
end


