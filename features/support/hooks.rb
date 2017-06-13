require_relative '../pages/page_actions'

Dir["../pages/*.rb"].each {|file| require_relative(file)}

firefox_driver_path = File.join(File.dirname(__FILE__), "..", "..", "drivers", "geckodriver.exe")

Before do
  # init webdriver
  @driver = Selenium::WebDriver.for :firefox, driver_path: firefox_driver_path
  #@driver.manage.timeouts.implicit_wait = 3
  #@driver.manage.timeouts.page_load = 3
  puts 'WebDriver has been created'

  @basic_auth = BasicAuth.new @driver
  @dropdown = Dropdown.new @driver
  @checkboxes = Checkboxes.new @driver
  @dynamic_loading = DynamicLoading.new @driver
end

After do
  @driver.quit
end