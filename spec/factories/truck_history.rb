FactoryGirl.define do
  factory(:truck_history) do |f|
    f.maintenance_info { Faker::Commerce.product_name }
    f.truck_id { Faker::Number.number(10) }
    f.maintenance_date { Faker::Date.between(2.days.ago, Date.today) }
    f.maintenance_passing { Faker::Boolean.boolean }
    f.document_file_name { Faker::Commerce.product_name }
    f.document_file_size { Faker::Number.number(10) }
    f.document_updated_at { Faker::Date.between(2.days.ago, Date.today) }
    f.document_content_type 'application/pdf'
  end
end
