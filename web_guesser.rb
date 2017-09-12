require 'sinatra'
require 'sinatra/reloader'
get '/' do
	def check_guess(number)
		if number < 5
			return "Too small"
		end
		return "Too big"
	end
  guess = params["guess"].to_i
  message = check_guess(guess)
  erb :index, :locals => {:number => guess, :message => message}
end
