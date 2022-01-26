require "allure-cucumber"
require "appium_lib"
require "fileutils"
require "cpf_cnpj"
require "faker"

# Limpa os logs e os screenshots
FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))

#carrega os capabilites
caps = Appium.load_appium_txt file: File.expand_path("caps/android-s21.txt", __dir__), verbose: true
#inicializo uma instancia do drive do appium passando o parametro de capabilite
Appium::Driver.new(caps, true)
#vai fazer que dentro do cucumber sejam metodos nativos
Appium.promote_appium_methods Object
