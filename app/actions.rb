# Homepage (Root path)
get '/hello/:name' do
  erb :index
  # "Hello #{params[:name]}"
end
