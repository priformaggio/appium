Given("I am on triangulo app") do
  #wait	=	Selenium::WebDriver::Wait.new	:timeout	=>	20

  @driver = Triangulo.new
  @driver.check_content
end
