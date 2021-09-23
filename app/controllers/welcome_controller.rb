class WelcomeController < ApplicationController 
  def index
    term = params[:term]
    location = params[:location]
    if params[:term].nil? && params[:location].nil?
      render :index
    else      
      results = YelpService.search(term, location)
      @places = results["businesses"]
    end
  end
end