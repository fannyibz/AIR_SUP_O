class ServicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  
  def index
    @services = policy_scope(Service)
  end

  def show
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
