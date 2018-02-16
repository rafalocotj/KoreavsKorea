require 'sinatra'
require './config'
require './lib/Tablero.rb'

get '/' do
	erb :index
end

post '/barco' do
	erb :barco
end

post '/batalla' do
	session["barco"] = "#{params['PX']}#{params['PY']}"
	puts "#{params['PX']}#{params['PY']}"
	erb :batalla
end	

barco = "OO"

get '/batalla' do

	if barco == "OO"
		session["barco"] = "OOOOO"
	else
		session["barco"] = barco	
	end

	erb :batalla
end