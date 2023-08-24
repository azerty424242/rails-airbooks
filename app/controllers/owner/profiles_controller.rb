class Owner::ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @reservations = current_user.reservations.includes(:book)
  end
end
