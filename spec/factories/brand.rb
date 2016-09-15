FactoryGirl.define do
  factory(:brand) do |f|
    f.name { Faker::Name.first_name }
  end
end
