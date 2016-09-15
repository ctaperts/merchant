FactoryGirl.define do
  factory(:category) do |f|
    f.name { Faker::food.ingredient }
  end
end
