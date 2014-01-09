# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :guest_book_note, :class => 'Note' do
    description "MyString"
  end
end
