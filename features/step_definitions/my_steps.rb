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


Given(/^que abri el juego$/) do
  visit '/'
end

Given(/^se oprimio el boton "([^"]*)"$/) do |texto|
  click_button(texto)
end

When(/^ingreso a "([^"]*)" como "([^"]*)"$/) do |valor, coordenada|
  fill_in(coordenada, :with => valor)
end

When(/^posiciono mi Barco$/) do
  visit '/batalla'
end

When(/^visualizar pantalla de batalla$/) do
  visit '/batalla'
end