require 'sinatra'
require 'sinatra/reloader' if development?

get '/bet/:stake/on/:number' do
	number = params[:number].to_i
	stake = params[:stake].to_i

	roll = rand(6) + 1

	if number == roll
		"It landed on #{roll}, Well done you won #{6*stake} Chips."
	else
		"It landed on #{roll}. You lose your stake of #{stake}."
	end
end