class PlacesController < ApplicationController

  def show
    @place = Place.find(params[:id])
    respond_to do |format|
      format.json {render json: @place.to_json}
    end
  end

  def create
    @place = Place.new(params[:place])
    render json: @place
  end

  def destroy
    @place = Place.find(params[:id])
    @place.destroy()
  end

  def update
    @place = Place.find(params[:id])
    @place.update()
    render json: @place
  end
end
