class Dropdown
  DROPDOWN_ELEMENT = {id: 'dropdown'}

  def initialize(driver, site_url)
    @driver = driver
    @site_url = site_url
  end

  def visit(page)
    @driver.get(@site_url + page)
  end

  def select(option)
    dropdown = @driver.find_element(id: "dropdown")
    @selected_list = Selenium::WebDriver::Support::Select.new dropdown
    @selected_list.select_by(:text, option)
  end

  def selected_option
    @selected_list.selected_options[0].text
  end
end