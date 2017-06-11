require 'selenium-webdriver'
require 'rspec'

Dir["../pages/*.rb"].each {|file| require_relative(file)}

firefox_driver_path = File.join(File.dirname(__FILE__), "..", "..", "drivers", "geckodriver.exe")
puts firefox_driver_path

site_domen_name = 'the-internet.herokuapp.com'
site_url = 'http://' + site_domen_name + '/'

Before do
  # init webdriver
  @driver = Selenium::WebDriver.for :firefox, driver_path: firefox_driver_path
  @driver.manage.timeouts.implicit_wait = 10
  @driver.manage.timeouts.page_load = 10
  puts 'WebDriver has been created'

  @basic_auth = BasicAuth.new @driver, site_domen_name
  @dropdown = Dropdown.new @driver, site_url
end

After do
  @driver.quit
end