class Notes < SitePrism::Page
  set_url '/guest_book/notes'

  element :new_tab,   '#new'
  element :notes_tab, '#notes'
end
