FactoryGirl.define do
  factory(:product) do
    avatar_content_type nil
    avatar_file_name nil
    avatar_file_size nil
    avatar_updated_at nil
    brand_id 1
    category_id 2
    description nil
    item_amount_type 0
    location_id 2
    name "Artichokes"
    pounds nil
    price BigDecimal.new("1.0")
    price_per_case nil
    price_per_pound nil
    quantity 10
  end
end
