module GuestBook
  class Note < ActiveRecord::Base

    scope :recent, -> do
      order("created_at DESC").limit(5)
    end
  end
end
