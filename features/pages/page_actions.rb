class PageActions
  def site_domen_name
    'the-internet.herokuapp.com'
  end

  def site_url
    'http://' + site_domen_name + '/'
  end

  def initialize(driver)
    @driver = driver
  end

  def visit
    @driver.navigate.to self.path
  end

  def wait_for (seconds)
    Selenium::WebDriver::Wait.new(timeout: seconds).until {yield}
  end
end