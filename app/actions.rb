# Homepage (Root path)
get '/hello/:name' do
  erb :index
  # "Hello #{params[:name]}"
end


get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

get '/messages/new' do
  # binding.pry
  erb :'messages/new'
end

post '/messages' do
  @message = Message.new(
    content: params[:content],
    author: params[:author],
    author: params[:url]
    )
  if @message.save
    redirect '/messages'
  else
       # binding.pry
    erb :'messages/new' 
  end
end

get '/messages/:id' do
  @message = Message.find params[:id]
  @all_authors = Message.where author: @message.author
  # binding.pry
  erb :'messages/show'
end