require 'sinatra'

get '/layout' do 
	erb :layout
end

get '/home' do 
	@header_image = "/images/home_header.jpg"
	erb :home
end

get '/review' do
	erb :review
end

get '/booking' do
	@header_image = "/images/booking_header.jpg"
	puts "**************************"
	puts "PAGE LOADED"
	erb :booking
end

post '/confirmation' do
	@header_image = "/images/confirmation_header.jpg"
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

get '/description' do
    @header_image = "/images/description_header.jpg"
	erb :description
end









