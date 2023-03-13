require 'sinatra'
require 'json'
require 'net/http'
require 'rerun'

set :public_folder, File.join(File.dirname(__FILE__), 'public')

get '/' do
  uri = URI('YOUR API KEY') # Replace with your API endpoint
  response = Net::HTTP.get(uri)
  data = JSON.parse(response)

  # Render the data in an HTML template

  puts data['data']['fields']['porpi_hero_component']
  erb :index, locals: { data: data['data']['fields']}

end


