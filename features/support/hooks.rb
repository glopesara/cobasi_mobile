# encoding: UTF-8
require "report_builder"
require "date"
Before do
  #sobe o servidor do appium
  driver.start_driver
  #timeout de 10 segundos
  driver.manage.timeouts.implicit_wait = 30
  #device_type = "ios"

  @screen = AndroidScreens.new if DEVICE.eql?("android")
  @screen = IOSScreens.new if DEVICE.eql?("ios")
end

After do |scenario|
  #chama o driver do appium e tira uma foto
  binary_shot = driver.screenshot_as(:base64)

  #diretorio para salvar a evidencia
  temp_shot = "logs/temp_shot.png"

  #transformando o arquivo binario da foto para arquivo
  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8"))
  end

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
  #fechar o drive
  driver.quit_driver
end

at_exit do
  @infos = {
    "device" => DEVICE.upcase,
    "environment" => "Dev",
    "Data do Teste" => Time.now.to_s,
  }

  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report"
    config.report_types = [:html]
    config.report_title = "Pixel Mobile"
    config.additional_info = @infos
    config.color = "indigo"
  end
  ReportBuilder.build_report
end
