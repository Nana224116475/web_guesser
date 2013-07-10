require 'sinatra'
require 'sinatra/reloader'

number = (1 + rand(99)).to_s


get "/" do
	message = check_guess(params["guess"], number)
	puts message
	erb :index, :locals => {:number => number, :message => message} 
end

def check_guess(guess, number)
 	if guess.to_i > number.to_i  
 		return "TOO HIGH"
 	elsif guess.to_i < number.to_i 
 		return "TOO LOW"
 	elsif guess.to_i == number.to_i
 		return "RIGHT!!! 
 		<img src='http://3steps-tosuccess.com/wp-content/uploads/2013/03/success.jpg' width = "20" height = "60">"
 	end
 end
 