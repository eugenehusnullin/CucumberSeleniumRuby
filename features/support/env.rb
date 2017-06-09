require 'selenium-webdriver'
require 'rspec'


chrome_driver_path = File.join(File.dirname(__FILE__), "..", "..", "drivers", "chromedriver.exe")
firefox_driver_path = File.join(File.dirname(__FILE__), "..", "..", "drivers", "geckodriver.exe")
puts chrome_driver_path
puts firefox_driver_path

Before do

  # init webdriver
  #@driver = Selenium::WebDriver.for :chrome, driver_path: chrome_driver_path
  @driver = Selenium::WebDriver.for :firefox, driver_path: firefox_driver_path
  @driver.manage.timeouts.implicit_wait = 10
  @driver.manage.timeouts.page_load = 10
  puts 'WebDriver has been created'
end

After do
  @driver.quit
end