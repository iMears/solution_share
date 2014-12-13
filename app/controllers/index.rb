require_relative '../lib/links'

get '/' do
  erb :index
end


get '/links' do
  { links: Links.get(params) }.to_json
end


