Rails.application.routes.draw do

  mount GuestBook::Engine => "/guest_book"
end
