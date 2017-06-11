class Checkboxes
  CHECKBOXES = {css: 'input[type="checkbox"]'}

  def initialize(driver)
    @driver = driver
  end

  def is_checked? index
    checkboxes = @driver.find_elements(CHECKBOXES)
    checkboxes[index.to_i - 1].selected?
  end
end