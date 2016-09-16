FactoryGirl.define do
  factory(:category) do |f|
    f.name { Faker::GameOfThrones.house }
  end
end
