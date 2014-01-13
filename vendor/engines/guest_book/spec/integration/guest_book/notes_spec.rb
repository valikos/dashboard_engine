require 'spec_helper'

module GuestBook
  describe 'Notes' do
    before :each do
      @note = Notes.new
      @note.load
    end

    it 'contain page elements' do
      @note.should have_notes_tab
      @note.should have_new_tab
    end
  end
end
