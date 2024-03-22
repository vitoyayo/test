FactoryBot.define do
  factory :user, class: User do
    first_name { 'Pedro' }
    last_name { 'Picapiedras' }
    age { 38_900 }
  end
end