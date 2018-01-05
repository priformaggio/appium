#	adicionar	os	requires:
require 'appium_lib'


#Setar	o	caminho	do	arquivo	devices.yaml
#$device	=	'samsung'	#Setar	Device
#$base_devices	=	YAML.load_file('./config/devices.yaml')['devices'][$device]
class AppiumWorld
end

#Setar	o	caminho	do	arquivo	emulators.yaml
#emulators	=	'Nexus'	#Setar	Emulador
#base_emulators	=	YAML.load_file('/home/priscila/appium/features/support/config/emulators.yml')['emulators'][$emulators]



#Executar	o	Driver	Appium:
#Appium::Driver.new(base_emulators)
#Appium.promote_appium_methods	AppiumWorld
caps = Appium.load_appium_txt file: File.expand_path('appium.txt')
Appium::Driver.new(caps,true)
Appium.promote_appium_methods AppiumWorld

World do
  AppiumWorld.new
end

CONFIG_DATA = YAML.load_file('./features/support/config/config_data.yml')


def get_input_data(node)
    CONFIG_DATA[node]
end
