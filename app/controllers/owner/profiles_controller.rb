class Owner::ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @reservations = @user.reservations
  end
end
