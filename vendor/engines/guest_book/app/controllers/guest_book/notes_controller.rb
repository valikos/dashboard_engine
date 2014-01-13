require_dependency "guest_book/application_controller"

module GuestBook
  class NotesController < ApplicationController
    def index
      @notes = Note.recent
      @new_note = Note.new
    end

    def create
      Note.create!(params.require(:note).permit(:description))
      redirect_to action: :index
    end
  end
end
