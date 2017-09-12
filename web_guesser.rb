require 'sinatra'
require 'sinatra/reloader'
get '/' do
	x = rand(100)
	"Hello, World! #{x}"
end