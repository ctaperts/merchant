FactoryGirl.define do
  factory(:truck) do |f|
    f.description { Faker::Commerce.product_name }
    f.number { Faker::Number(10) }
  end
end
