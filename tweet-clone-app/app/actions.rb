# Homepage (Root path)
get '/' do
  erb :'index'
end

get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

get '/messages/new' do
  erb :'messages/new'
end

post '/messages' do 
  @message = Message.new(
    author: params[:author],  
    content: params[:content],
    url: params[:url]
  )
  if @message.save
    redirect :'/messages'
  else
    erb :'messages/new'
  end
end

get '/messages/:id' do
  @message = Message.find params[:id]
  @other_messages = Message.where("author = ? AND id != ?", @message.author, @message.id)
  erb :'/messages/show'
end