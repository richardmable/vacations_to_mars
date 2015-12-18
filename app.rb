require 'sinatra'
require 'sendgrid-ruby'

get '/' do
	@title = 'Booking'
	puts "LOADED"
	erb :booking
end

get '/layout' do 
	erb :layout
end

get '/home' do 
	mail_to("emilymcc803@gmail.com")
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



def mail_to(email)

	client = SendGrid::Client.new do |c|   
		c.api_key = ENV['SENDGRID_API_KEY'] 
	end

	mail = SendGrid::Mail.new do |m|   
		m.to = email  
		m.from = 'jon@nycda.com'   
		m.subject = 'Hello Zach!'   
		m.text = 'Check this out, bro!' 
	end
	res = client.send(mail) 
	puts res.code 
	puts res.body
	
end
