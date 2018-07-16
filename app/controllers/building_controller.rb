class BuildingController < ApplicationController
  def index
    @buildings = Building.all
  end

  def new
    @building = Building.new
  end

  def edit

  end

  def create

  end

  def update

  end

end