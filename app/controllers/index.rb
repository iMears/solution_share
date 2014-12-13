require_relative '../lib/links'

get '/' do
  erb :index
end


get '/links' do
  Links.get params
  # p params
  # @params = params
  # params[:week], params[:challenge], params[:name]
  # links_array = []
  # {links: links_array}.to_json
end


