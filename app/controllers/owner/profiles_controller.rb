class Owner::ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @reservations = current_user.reservations.includes(:book)
    @user = current_user
    @reservations = @user.reservations
    @bookmarks = @user.bookmarks
  end
end


