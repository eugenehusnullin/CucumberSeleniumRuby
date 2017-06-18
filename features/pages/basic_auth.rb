class BasicAuth
  include PageActions
  SUCCESS_MESSAGE = { css: '.example p' }

  def with(username, password)
    url = "http://#{username}:#{password}@#{$base_url}/basic_auth"
    @driver.get(url)
    #@driver.switch_to.alert.accept()
  end

  def success_message
    @driver.find_element(SUCCESS_MESSAGE)
  end
end