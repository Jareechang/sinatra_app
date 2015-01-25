# Homepage (Root path)
get '/hello/:name' do
  erb :index
  # "Hello #{params[:name]}"
end

get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end