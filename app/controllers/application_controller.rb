class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  TODO: Get all the memes
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

end
