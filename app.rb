require 'sinatra'
require './config'
require './lib/Tablero.rb'

barco = "OO"

get '/batalla' do

	if barco == "OO"
		session["barco"] = "OOOOO"
	else
		session["barco"] = barco	
	end

	erb :batalla
end
