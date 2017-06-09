

site_domen_name = 'the-internet.herokuapp.com'
site_url = 'http://' + site_domen_name + '/'

Given(/^Open a browser$/) do

end

When(/^Login with "([^"]*)" username and "([^"]*)" password$/) do |username, password|
  url = "http://#{username}:#{password}@" + site_domen_name + "/basic_auth"
  @driver.get(url)
  @driver.switch_to.alert.accept()
end

Then(/^Should see the "([^"]*)" message$/) do |message|
  expect(@driver.find_element(:css, '.example p').text).to eq(message)
end

When(/^Move to "([^"]*)" page$/) do |page|
  @driver.get(site_url + page)
end

When(/^Select "([^"]*)" from the dropdown$/) do |option |
  dropdown = @driver.find_element(id: "dropdown")
  @selected_list = Selenium::WebDriver::Support::Select.new dropdown
  @selected_list.select_by(:text, option)
end

Then(/^Should see the "([^"]*)" selected$/) do |expected_selected_option|
  actual_selected_option = @selected_list.selected_options[0].text
  expect(actual_selected_option).to eq(expected_selected_option)
end