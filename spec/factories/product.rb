FactoryGirl.define do
  factory(:product) do |f|
    f.name { Faker::Lorem.word }
    f.avatar_content_type nil
    f.avatar_file_name nil
    f.avatar_file_size nil
    f.avatar_updated_at nil
    f.brand_id { Faker::Number.number(5) } 
    f.location_id { Faker::Number.number(5) } 
    f.category_id { Faker::Number.number(5) }
    f.description { Faker::Hipster.sentence }
    f.item_amount_type { Faker::Number.number(7) }
    f.pounds { Faker::Number.number(5) }
    f.price { Faker::Commerce.price }
    f.price_per_case { Faker::Commerce.price }
    f.price_per_pound { Faker::Commerce.price }
    f.quantity { Faker::Number.number(500) }
  end
end
