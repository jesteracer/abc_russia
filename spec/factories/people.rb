# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    fio "MyString"
    about "MyText"
    birth_date "2013-06-19"
    accused_for "MyText"
    contacts "MyText"
    accounts "MyText"
  end
end
