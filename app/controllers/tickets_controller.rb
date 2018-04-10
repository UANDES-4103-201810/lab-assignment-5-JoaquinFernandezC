class TicketsController < ApplicationController

  def show
    @ticket = Ticket.find(params[:id])
    respond_to do |format|
      format.json {render json: @ticket.to_json}
    end
  end

  def create
    @ticket = Ticket.create(params[:ticket])
    render json: @ticket
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    @ticket.destroy()
  end

  def update
    @ticket = Ticket.find(params[:id])
    @ticket.update()
    render json: @ticket
  end

end
