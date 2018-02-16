require './lib/Tablero.rb'

Given(/^quiero comienza la batalla$/) do
    visit '/batalla'
end

Then(/^debo ver "([^"]*)"$/) do |texto|
    expect(page.body).to match /#{texto}/m
end

Given(/^ningun barco colocado$/) do
  @barco = "OO"
end

Given(/^un barco colocado en "([^"]*)"$/) do |rengloncolumna|
  tablero = Tablero.new
  tablero.colocar_barco(2)
  #tablero.colocar_barco(rengloncolumna)
end


