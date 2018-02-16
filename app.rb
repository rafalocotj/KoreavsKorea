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

	session["tablero2"] = Tablero.new 
	session["tablero2"] = session["tablero2"].colocar_barco("11")
	erb :batalla
end	

post '/atacar' do
 session["ataque"] = "#{params['PX']}#{params['PY']}"
end
