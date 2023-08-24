class Owner::ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @reservations = @user.reservations
    @bookmarks = @user.bookmarks
    @rented_books = Book.joins(:reservations).where(reservations: { renter: @user }).distinct
    @owner_books = Book.where(owner_id: current_user.id)

    # faut faire ref au owner du book sur la reservations
    # toutes les reservations dans lequel le owner_id de l'objet book est le current_user_id
  end
end
