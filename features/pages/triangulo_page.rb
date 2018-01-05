require 'appium_lib'
class Triangulo < AppiumWorld

  def content
     'content'
  end

  def txtLado3
    'txtLado3'
  end

  def txtLado2
    'txtLado2'
  end

  def txtLado1
    'txtLado1'
  end

  def botaoCalcular
    'btnCalcular'
  end

  def txtResultado
    'txtResultado'
  end


  def input_lado(lado, texto)
    find_element(:id, lado).click
    find_element(:id, lado).send_keys(texto)
  end

  def click_calcular
    find_element(:id, botaoCalcular).click
  end

  def check_resultado
    return find_element(:id,txtResultado).displayed?
  end

  def check_content
    return find_element(:id,content).displayed?
  end
end
