require 'selenium-webdriver'
require 'rspec'

After do
  @driver.quit
end