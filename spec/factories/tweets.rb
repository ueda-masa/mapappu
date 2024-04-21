FactoryBot.define do
  factory :tweet do
    title              { Faker::Book.title }
    introduction       { Faker::Lorem.paragraph }
    
  end
end


