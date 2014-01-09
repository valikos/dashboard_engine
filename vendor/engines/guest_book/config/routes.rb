GuestBook::Engine.routes.draw do
  mount GuestBook::Engine, at: "guest_book"
end
