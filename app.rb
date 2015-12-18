require 'sinatra'

get '/layout' do 
	erb :layout
end

get '/home' do 
	erb :home
end

get '/' do 
	"hi"
end

get '/review' do
	erb :review
end