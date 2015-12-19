require 'sinatra'
require 'sendgrid-ruby'

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
	mail_to(@email)
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
		m.from = 'emilymcc803@gmail.com'   
		m.subject = 'Your MarsQuest Confirmation!'   
		m.text = "Hi" + " " + @firstname + "! This email is confirming your MarsQuest booking! We cannot wait to travel with you!"
	end

	res = client.send(mail) 
	puts res.code 
	puts res.body
	
end

