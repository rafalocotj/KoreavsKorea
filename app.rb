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

	session["tablero"] = Tablero.new 
	session["tablero"] = session["tablero"].colocar_barco(session["barco"])
	erb :batalla
end	
