require 'appium_lib'
class Triangulo < AppiumWorld

  def content
     'content'
  end

  def check_content
    find_element(:id,content).displayed?
  end
end
