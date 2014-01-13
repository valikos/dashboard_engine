module GuestBook
  class Note < ActiveRecord::Base

    scope :recent, -> do
      order("created_at DESC").limit(10)
    end
  end
end
