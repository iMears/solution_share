get '/' do
  erb :index
end


post '/solutions' do

  p params
  @params = params
  params[:week], params[:challenge], params[:name]
  links_array = []
  {links: links_array}.to_json
end


