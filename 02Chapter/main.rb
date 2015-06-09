require 'slim'
require 'sass'
require 'sinatra'
require 'sinatra/reloader' if development?

get('/styles.css')do
 	scss :styles
end

get '/' do
	@title = "Home | Song by Sinatra"
	slim :home
end

get '/about' do
	@title = "All about the website"
	slim :about
end

get '/contact' do
	@title = "Contact Us!"
	slim :contact	
end

not_found do
	slim :not_found
end
