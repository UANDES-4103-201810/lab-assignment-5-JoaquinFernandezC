class EventsController < ApplicationController

  def show
    @event = Event.find(params[:id])
    respond_to do |format|
      format.json {render json: @event.to_json}
    end
  end

  def create
    @event = Event.create(params[:event])
    render json: @event
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy()
  end

  def update
    @event = Event.find(params[:id])
    @event.update()
    render json: @event
  end

end
