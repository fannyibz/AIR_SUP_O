class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @services = Service.all
  end

  def show
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
  end

  def update
  end

  def destroy
  end

  private
  def services_params
    params.require(:service).permit(:name, :description, :address, photos: [])
  end




end
