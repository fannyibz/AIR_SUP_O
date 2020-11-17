class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
    authorize @service
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
