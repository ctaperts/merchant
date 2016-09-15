FactoryGirl.define do
  factory(:location) do |f|
    f.name { Faker::Name.name }
    f.product_id { Faker::Number(10) }
  end
end
