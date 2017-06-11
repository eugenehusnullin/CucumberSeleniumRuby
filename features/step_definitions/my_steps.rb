When(/^Login with "([^"]*)" username and "([^"]*)" password$/) do |username, password|
  @basic_auth.with(username, password)
end

Then(/^Should see the "([^"]*)" message$/) do |message|
  expect(@basic_auth.success_message.text).to eq(message)
end

When(/^Move to "([^"]*)" page$/) do |page|
  @dropdown.visit(page)
end

When(/^Select "([^"]*)" from the dropdown$/) do |option |
  @dropdown.select(option)
end

Then(/^Should see the "([^"]*)" selected$/) do |expected_selected_option|
  expect(@dropdown.selected_option).to eq(expected_selected_option)
end