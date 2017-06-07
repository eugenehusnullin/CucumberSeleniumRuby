chrome_driver_path = File.join(File.dirname(__FILE__), "..", "..", "drivers", "chromedriver.exe")
firefox_driver_path = File.join(File.dirname(__FILE__), "..", "..", "drivers", "geckodriver.exe")
puts chrome_driver_path
puts firefox_driver_path

Given(/^Open a browser$/) do
  #@driver = Selenium::WebDriver.for :chrome, driver_path: chrome_driver_path
  @driver = Selenium::WebDriver.for :firefox, driver_path: firefox_driver_path
  @driver.manage.timeouts.implicit_wait = 10
  @driver.manage.timeouts.page_load = 10
  puts 'WebDriver has been created'
end

When(/^Login with "([^"]*)" username and "([^"]*)" password$/) do |username, password|
  puts "#{username} and #{password}"
  url = "http://#{username}:#{password}@the-internet.herokuapp.com/basic_auth"
  @driver.get(url)
  @driver.switch_to.alert.accept()
end

Then(/^Should see the "([^"]*)" message$/) do |message|
  puts "#{message}"
  expect(@driver.find_element(:css, '.example p').text).to eq(message)
end