class BookingsController < ApplicationController

  def index
  end

  # def new
  # dans show de services
  # end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @service = Service.find(params[:service_id])
    @booking.user = current_user
    @booking.service = @service
    if @booking.save
      redirect_to dashboard_path
    else
      render "services/show"
    end
    # authorize @service
  end

  def delete
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
