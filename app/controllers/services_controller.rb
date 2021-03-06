class ServicesController < ApplicationController
  before_action :find_service, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @services = policy_scope(Service)

    if params[:query].present?
      @services = @services.search_by_services_name_or_hero_username(params[:query])
    end

    if params[:address].present?
      @services = @services.search_by_services_address(params[:address])
    end

    if params[:start_date].present?
      # @services = @services.search_by_booking_start_date(params[:start_date])
    end

    if params[:end_date].present?
      # @services = @services.search_by_booking_end_date(params[:end_date])
    end

    @markers = @services.geocoded.map do |service|
      {
        lat: service.latitude,
        lng: service.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { service: service })
      }
    end

  end

  def show
    authorize @service
    @booking = Booking.new
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(services_params)
    @service.user = current_user
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
    authorize @service
  end

  def edit
    authorize @service
  end

  def update
    @service.update(services_params)
    authorize @service

    redirect_to service_path(@service)
  end

  def destroy
    authorize @service
    @service.destroy
    redirect_to services_path
  end

  private

  def find_service
    @service = Service.find(params[:id])
  end

  def services_params
    params.require(:service).permit(:name, :description, :address, :price, photos: [])
  end
end
