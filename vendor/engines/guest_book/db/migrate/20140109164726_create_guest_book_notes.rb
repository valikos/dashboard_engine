class CreateGuestBookNotes < ActiveRecord::Migration
  def change
    create_table :guest_book_notes do |t|
      t.string :description

      t.timestamps
    end
  end
end
