# This migration comes from guest_book (originally 20140109163520)
class CreateGuestBookDemoLooks < ActiveRecord::Migration
  def change
    create_table :guest_book_demo_looks do |t|
      t.string :title

      t.timestamps
    end
  end
end
