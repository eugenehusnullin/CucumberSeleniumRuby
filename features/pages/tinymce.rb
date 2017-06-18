class Tinymce < PageActions
  EDITOR = {id: 'tinymce'}
  PAGE_TITLE = {css: 'h3'}

  def path
    "/tinymce"
  end

  def editor
    @driver.find_element(EDITOR)
  end

  def page_title
    @driver.find_element(PAGE_TITLE)
  end
end