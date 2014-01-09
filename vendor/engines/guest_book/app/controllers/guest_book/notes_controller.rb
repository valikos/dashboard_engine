require_dependency "guest_book/application_controller"

module GuestBook
  class NotesController < ApplicationController
    def index
      @notes = Note.recent
    end
  end
end
