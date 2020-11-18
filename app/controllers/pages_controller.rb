class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @bookings_client = current_user.bookings
    @bookings_owner = current_user.bookings_owner
  end
end
