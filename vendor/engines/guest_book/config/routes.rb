GuestBook::Engine.routes.draw do
  resources :demo_looks

  mount GuestBook::Engine, at: "guest_book"
end
