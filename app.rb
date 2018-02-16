require 'sinatra'
require './config'

get '/' do
	erb :index
end

post '/barco' do
	erb :barco
end
