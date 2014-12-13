get '/' do
  erb: index
end


post '/' do
  p params
  erb: index
end

