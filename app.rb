require 'sinatra'

get '/' do
	puts "************** LOADED *************"
	erb :home
end

get '/navBar' do
	puts "************** LOADED NAVBAR *************"
	erb :navBar
end

