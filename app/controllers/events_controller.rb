class EventsController < ApplicationController 
  before_action :find_event, only: [:show, :update, :destroy]

  def index
    @events = Event.all 
  end

  def show
    render
  end

  def new
  end
  

  def create 
    @event = Event.new(event_params)
    @user_events = User.find_by(id: params["event"]["user_id"])
    if @event.save
      redirect_to events_path
    else 
      byebug
      flash[:error] = "There was an error creating this event"
    end
  end

  def update 
    if @event.update(event_params)
      render 
    else 
      flash[:error] = "There was an error updating this event"
    end
  end

  def destroy 
    @event.destroy 
    redirect_to events_path
  end

  private 
  def event_params
    params.require(:event).permit(:name, :address, :price, :rating, :phone, :image_url, :url, :user_id)
  end

  def find_event
    @event = Event.find_by(id: params[:id])
  end
end