# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :transaction do
    person nil
    amount "9.99"
    direction "in"
    about "MyText"
  end
end
