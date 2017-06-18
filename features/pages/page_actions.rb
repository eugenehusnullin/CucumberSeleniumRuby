class PageActions
  def initialize(driver)
    @driver = driver
  end

  def visit path = nil
    page = self.path
    page += path unless path.nil?
    @driver.navigate.to URI::HTTP.build({:host => $base_url, :path => page})
  end

  def wait_for (seconds)
    Selenium::WebDriver::Wait.new(timeout: seconds).until {yield}
  end

  def switch_to frame
    @driver.switch_to.frame frame
  end

  def switch_to_default
    @driver.switch_to.default_content
  end
end