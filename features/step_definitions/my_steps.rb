When(/^Login with "([^"]*)" username and "([^"]*)" password$/) do |username, password|
  @basic_auth.with(username, password)
end

Then(/^Should see the "([^"]*)" message$/) do |message|
  expect(@basic_auth.success_message.text).to eq(message)
end

When(/^Move to "([^"]*)" page$/) do |page|
  instance_variable_get("@#{page}").visit
end

When(/^Select "([^"]*)" from the dropdown$/) do |option |
  @dropdown.select(option)
end

Then(/^Should see the "([^"]*)" selected$/) do |expected_selected_option|
  expect(@dropdown.selected_option).to eq(expected_selected_option)
end

Then(/^Check if 2(st|nd|rd|th) checkbox is selected$/) do |index|
  expect(@checkboxes.is_checked? index).to eql(true)
end

When(/^Click on start button$/) do
  @dynamic_loading.start_button.click
end

Then(/^"([^"]*)" message is displayed$/) do |message|
  @dynamic_loading.success_message_displayed?
  expect(@dynamic_loading.finish_element.text).to eql(message)
end