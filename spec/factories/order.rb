FactoryGirl.define do
  factory(:order) do |f|
    f.name { Faker::Name.first_name }
    f.address { Faker::Address.city }
    f.user_id { Faker::Number.number(1) }
    f.pay_type 'Credit Card'
  end
end
