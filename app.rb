require 'sinatra'

get '/navBar' do
	puts "************** LOADED NAVBAR *************"
	erb :navBar
end

get '/layout' do 
	erb :layout
end

get '/home' do 
	erb :home
end

get '/review' do
	erb :review
end

get '/booking' do
	puts "**************************"
	puts "PAGE LOADED"
	erb :booking
end

post '/confirmation' do
	@firstname = params[:firstname]
	@lastname = params[:lastname]
	@email = params[:email]
	@phonenumber = params[:phonenumber]
	@streetaddress = params[:streetaddress]
	@city = params[:city]
	@state = params[:state]
	@sex = params[:sex]
	@cryosleep = params[:cryosleep]
	puts "*****************************"
	puts params.inspect
	puts "*****************************"
	erb :confirmation
end