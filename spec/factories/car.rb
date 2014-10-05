FactoryGirl.define do
  factory :car do
    color "black"
    year "1934"
    mileage "1233"

    association :manufacturer
  end
end
