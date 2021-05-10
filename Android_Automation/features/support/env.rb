require "appium_lib"
require "pry"
require 'selenium-webdriver'
require 'appium_lib'
require 'rubygems'

DEVICE ||= ENV["DEVICE"]

caps = {}
# Credenciais conta/dispositivo BrowserStack
caps['browserstack.user'] = 'guilhermedalazen_0x64aW'
caps['browserstack.key'] = 'FBWRxsPhXmhh63vjjZMM'
# Dependências BrowserStack
caps['project'] = 'First Ruby project'
caps['name'] = 'single_test'

case DEVICE 
  # Dispositivo e modelo
  when "ios"
    caps['device'] = 'iPhone 7'
    caps['os_version'] = '12'
    caps['build'] = 'Ruby iOS'
    # Url do app no BrowserStack
    caps['app'] = 'bs://444bd0308813ae0dc236f8cd461c02d3afa7901d' # fake teste
    # Plataforma
    caps['platformName'] = 'iOS'
  when "android"
    caps['device'] = 'Motorola Moto X 2nd Gen'
    caps['os_version'] = '6.0'
    caps['build'] = 'Ruby Android'
    # Url do app no BrowserStack
    caps['app'] = 'bs://08782689cee802a4539ba69ea1c846332e186372'
    # Plataforma
    caps['platformName'] = 'android'
end

# Inicialia WebDriver remoto com BrowserStack e "capacidades" definidas acima
appium_driver = Appium::Driver.new({
  'caps' => caps,
  'appium_lib' => {
    :server_url => "http://hub-cloud.browserstack.com/wd/hub"
  }}, true)
#driver = appium_driver.start_driver # Iniciado em hooks.rb

'''
def caps
    { caps: {
        deviceName: "Anyname",
        platformName: "Android",
        app: (File.join(File.dirname(__FILE__), "PreciseUnitConversion.apk")),
        #app: "C:\Users\guilherme.dalazen\Android_Automation\features\support\PreciseUnitConversion.apk",
        appPackage: "com.ba.universalconverter",
        appActivity: "MainConverterActivity",
        newCommandTimeout: "3600",

    }}
end

Appium::Driver.new(caps, true) 
'''
Appium.promote_appium_methods Object

def find_in_list(value)
  3.times { Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.2, end_x: 0.5, end_y: 0.8, duration:600).perform }

  current_screen = get_source
  previous_screen = ""

  until (exists{ text(value) }) || (current_screen == previous_screen) do
    Appium::TouchAction.new.swipe(start_x: 0.5, start_y: 0.8, end_x: 0.5, end_y: 0.4, duration:1000).perform
    previous_screen = current_screen
    current_screen = get_source
  end

  if exists{ text(value) }
    text(value).click
  else
    fail("Cannot find element with text #{value}")
  end

end
