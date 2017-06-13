class DynamicLoading < PageActions
  START_BUTTON = {css: '#start button'}
  FINISH_ELEMENT = {css: '#finish'}

  def path
    site_url + "dynamic_loading/1"
  end

  def start_button
    @driver.find_element(START_BUTTON)
  end

  def finish_element
    @driver.find_element(FINISH_ELEMENT)
  end

  def success_message_displayed?
    wait_for(10){finish_element.displayed?}
  end
end