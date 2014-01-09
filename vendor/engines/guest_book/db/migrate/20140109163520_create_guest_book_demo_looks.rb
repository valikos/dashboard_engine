class CreateGuestBookDemoLooks < ActiveRecord::Migration
  def change
    create_table :guest_book_demo_looks do |t|
      t.string :title

      t.timestamps
    end
  end
end
