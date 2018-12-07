class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
  end

  def edit
    @building = Building.find(params[:id])
  end

  def show
    @building = Building.find(params[:id])
  end

  def create
    @building = Building.new(building_params)

    if @building.save
      redirect_to @building
    else
      render 'new'
    end
  end

  def update
    @building = Building.find(params[:id])

    if @building.update(building_params)
      redirect_to @building
    else
      render 'edit'
    end
  end

  def destroy
    @building = Building.find(params[:id])

    @building.destroy

    redirect_to buildings_path
  end


  private
  def building_params
    params.require(:building).permit(:code, :registration_num, :name, :street, :state, :city, :postal_code, :country, :parking_spots, :month_limits)
  end

end