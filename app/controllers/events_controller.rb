class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      @events = Event.all
      render action: 'index'
    else
      render action: 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def event_params
    params.require(:event).permit(:name, :location, :when, :description, :image, :contact_phone, :contact_email)
    end

end
