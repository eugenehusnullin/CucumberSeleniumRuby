When(/^Switch to "([^"]*)" frame$/) do |frame|
  @tinymce.switch_to frame
end

Then(/^Type "([^"]*)" into WYSIWYG Editor$/) do |message|
  @editor = @tinymce.editor
  @before_text = @editor.text
  @editor.clear
  @editor.send_keys message
end

And(/^New text should not equal old one$/) do
  after_text = @editor.text
  expect(after_text).not_to eql @before_text
end

Then(/^Return to default frame$/) do
  @tinymce.switch_to_default
  expect(@tinymce.page_title.text).not_to be_empty
end