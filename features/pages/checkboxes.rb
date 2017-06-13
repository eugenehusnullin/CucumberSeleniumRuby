class Checkboxes < PageActions
  CHECKBOXES = {css: 'input[type="checkbox"]'}

  def path
    site_url + "checkboxes"
  end

  def is_checked? index
    checkboxes = @driver.find_elements(CHECKBOXES)
    checkboxes[index.to_i - 1].selected?
  end
end