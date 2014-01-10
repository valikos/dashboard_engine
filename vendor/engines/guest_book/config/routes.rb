GuestBook::Engine.routes.draw do
  resources :demo_looks
  resources :notes, only: :index

  mount GuestBook::Engine, at: "guest_book"
end
