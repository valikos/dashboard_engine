require 'spec_helper'

module GuestBook
  describe 'Notes', js: true do
    before :each do
      @note = Notes.new
      @note.load
    end

    it 'contain page elements' do
      @note.should have_notes_tab
      @note.should have_new_tab
    end

    it 'create new new note' do
      @note.new_tab.click
      fill_in 'note_description', with: 'ololo'
      @note.submit_button.click
    end
  end
end
