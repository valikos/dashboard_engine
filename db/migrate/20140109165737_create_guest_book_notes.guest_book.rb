# This migration comes from guest_book (originally 20140109164726)
class CreateGuestBookNotes < ActiveRecord::Migration
  def change
    create_table :guest_book_notes do |t|
      t.string :description

      t.timestamps
    end
  end
end
