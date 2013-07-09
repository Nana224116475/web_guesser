require 'sinatra'
require 'sinatra/reloader'

number = (1 + rand(99)).to_s


get "/" do
	message = check_guess(params["guess"])
	puts message
	erb :index, :locals => {:number => number, :message => message} 
end

 def check_guess(guess)
 	if number.to_i + 5 <= guess.to_i
 		return "TOO HIGH"
 	elsif number.to_i - 5 >= guess.to_i
 		return "TOO LOW"
 	elsif number ==  guess.to_i
 		return "You guessed it correctly"
 	elsif true
 	  return "TRUE"
 	end
 end
