class ServicesController < ApplicationController
  before_action :find_service, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @services = policy_scope(Service)
  end

  def show
    authorize @service
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
    params.require(:service).permit(:name, :description, :address, photos: [])
  end
end
