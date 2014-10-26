# Read about factories at https://github.com/thoughtbot/factory_girl

require 'faker'

FactoryGirl.define do
  factory :product do
    name {Faker::Commerce.product_name}
    description {Faker::Lorem.paragraph(3)}
    price {Faker::Commerce.price}
  end
end
