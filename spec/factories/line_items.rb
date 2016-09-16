FactoryGirl.define do
  factory(:line_item) do |f|
    f.order_id { Faker::Number.number(5) } 
    f.product_id { Faker::Number.number(5) }
    f.price { Faker::Commerce.price }
    f.quantity { Faker::Number.number(500) }
    f.case { Faker::Number.number(5) }
    f.price_per_case { Faker::Commerce.price }
    f.pounds { Faker::Number.number(5) }
    f.price_per_pound { Faker::Commerce.price }
    f.check_by { Faker::Name.name }
    f.check_on { Faker::Date.between(2.days.ago, Date.today) }
    f.quality_check_by { Faker::Name.name }
    f.quality_check_on { Faker::Date.between(2.days.ago, Date.today) }
  end
end
