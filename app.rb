require 'sinatra'
require './config'

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
