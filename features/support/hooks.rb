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

After do |scenario|
  if scenario.failed?
    screenshots_dir = File.join(File.dirname(__FILE__), "..", "..", "screenshots")
    unless File.directory?(screenshots_dir)
      FileUtils.mkdir_p(screenshots_dir)
    end

    time_stamp = Time.now.strftime("%Y-%m-%d_at_%H.%M.%S").to_s
    screenshot_name = "#{time_stamp}_failure_#{scenario.name.gsub(/[^\w`~!@#\$%&\(\)_\-\+=\[\]\{\};:',]/, '-')}.png"
    screenshot_file = File.join(screenshots_dir, screenshot_name)
    @driver.save_screenshot(screenshot_file)
    embed("#{screenshot_file}", 'image/png')
  end
  @driver.quit
end