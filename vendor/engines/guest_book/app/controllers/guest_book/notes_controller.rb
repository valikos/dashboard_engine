require_dependency "guest_book/application_controller"

module GuestBook
  class NotesController < ApplicationController
    def index
      @notes = Note.recent
      @new_note = Note.new
    end

    def create
      @note = Note.new(params[:note])
      @note.create
      redirect_to :index
    end
  end
end
