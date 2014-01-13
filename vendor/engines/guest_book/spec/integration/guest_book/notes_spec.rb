require 'spec_helper'

module GuestBook
  describe 'Notes' do
    before :each do
      @note = Note.new
      @note.load
    end

    it 'test' do
      (1 + 1).should eq 2
    end
  end
end