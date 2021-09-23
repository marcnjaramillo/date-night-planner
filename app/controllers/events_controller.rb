class EventsController < ApplicationController

  def new
    
  end
  
  def show
    term = params[:term]
    location = params[:location]

    results = YelpService.search(term, location)

    @places = results["businesses"]
  end
end