Given(/^que abri el juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
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
