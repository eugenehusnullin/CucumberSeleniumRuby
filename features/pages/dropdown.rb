class Dropdown
  include PageActions
  DROPDOWN_ELEMENT = {id: 'dropdown'}

  def path
    "/dropdown"
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