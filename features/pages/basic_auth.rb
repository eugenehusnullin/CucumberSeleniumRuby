class BasicAuth
  SUCCESS_MESSAGE = { css: '.example p' }

  def initialize(driver, site_domen_name)
    @driver = driver
    @site_domen_name = site_domen_name
  end

  def with(username, password)
    url = "http://#{username}:#{password}@" + @site_domen_name + "/basic_auth"
    @driver.get(url)
    @driver.switch_to.alert.accept()
  end

  def success_message
    @driver.find_element(SUCCESS_MESSAGE)
  end
end