Given(/^que abri el juego$/) do
  visit '/'
end

Then(/^debo ver "([^"]*)"$/) do |texto|
  expect(page.body).to match /#{texto}/m
end

Given(/^se oprimio el boton "([^"]*)"$/) do |texto|
  click_button(texto)
end