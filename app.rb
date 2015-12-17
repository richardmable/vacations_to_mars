require 'sinatra'

get '/' do
	@title = 'Booking'
	puts "LOADED"
	erb :booking
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

