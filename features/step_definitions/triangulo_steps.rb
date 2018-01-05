Given("I am on triangulo app") do
  @driver = Triangulo.new
  @driver.check_content
end

When(/^I input the values (.+), (.+) e (.+)$/) do |int, int2, int3|
  @driver.input_lado(Triangulo.new.txtLado1, get_input_data(int))
  hide_keyboard
  @driver.input_lado(Triangulo.new.txtLado2, get_input_data(int2))
  hide_keyboard
  @driver.input_lado(Triangulo.new.txtLado3, get_input_data(int3))
  hide_keyboard
  @driver.click_calcular
end

Then /^I see a message informing which triangulo is$/ do
  expect(@driver.check_resultado).to be true
end
