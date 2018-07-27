class VisitorController < ApplicationController
  def index

  end

  def register
    @visitor = Visitor.new
  end

  private
  def visitor_params
    params.require(:building).permit(:code, :registration_num, :name, :street, :state, :city, :postal_code, :country, :parking_spots)
  end
end
