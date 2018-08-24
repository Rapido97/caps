class FacilitiesController < ApplicationController
  before_action :find_facility, only: [:show, :update, :edit, :destroy]

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(facility_params)

    if @facility.save
      redirect_to @facility
    else
      render new
    end
  end

  def show
  end

  def update
    if @facility.update(facility_params)
      redirect_to @facility
    else
      render 'edit'
    end
    
  end

  def edit
  end

  def destroy
    @facility.destroy
    redirect_to facilities_path
  end

  def index
    @facilities = Facility.all.order("created_at DESC")
  end


  private

  def facility_params
    params.require(:facility).permit(:name, :description, :status)
  end

  def find_facility
    @facility = Facility.find(params[:id])
  end

end