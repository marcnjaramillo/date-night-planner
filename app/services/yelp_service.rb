class YelpService
    
  API_HOST = "https://api.yelp.com"
  SEARCH_PATH = "/v3/businesses/search"
  BUSINESS_PATH = "/v3/businesses/" 
  DEFAULT_BUSINESS_ID = "yelp-new-york"
  DEFAULT_TERM = "pizzeria"
  SEARCH_LIMIT = 25

  API_KEY = Rails.application.credentials.yelp[:api_key]

  def self.search(location)
      url = "#{API_HOST}#{SEARCH_PATH}"
      params = {
      term: DEFAULT_TERM,
      location: location,
      limit: SEARCH_LIMIT
      }
      response = RestClient.get(url, Authorization: "Bearer #{API_KEY}", params: params)
      
      json = JSON.parse(response)
  end


end