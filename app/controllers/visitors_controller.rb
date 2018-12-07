class VisitorsController < ApplicationController
  def index
    @visitors = Visitor.all
  end

  def new
    @visitor = Visitor.new
  end

  def show
    @visitor = Visitor.find(params[:id])
  end

  def edit
    @visitor = Visitor.find(params[:id])
  end

  def create
    # check if visitor exceeded the limits

    @visitor = Visitor.new(visitor_params)

    if @visitor.save
      redirect_to @visitor
    else
      render 'new'
    end
  end

  def subscribe

  end

  private
  def visitor_params
    params.require(:visitor).permit(:apt_num, :phone, :license_plate, :building_id)
  end
end
