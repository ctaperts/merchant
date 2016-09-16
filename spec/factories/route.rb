FactoryGirl.define do
  factory(:route) do |f|
    f.order_id { Faker::Number.number(10) }
    f.truck_id { Faker::Number.number(10) }
  end
end
