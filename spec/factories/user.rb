FactoryGirl.define do
  factory(:user) do |f|
    f.admin { Faker::Boolean.boolean }
    f.current_sign_in_at { Faker::Date.between(2.days.ago, Date.today) }
    f.current_sign_in_ip { Faker::Internet.ip_v4_address }
    f.email { Faker::Internet.email }
    f.encrypted_password { Faker::Internet.password(10, 20) }
    f.last_sign_in_at { Faker::Date.between(2.days.ago, Date.today) }
    f.last_sign_in_ip { Faker::Internet.ip_v4_address }
    f.remember_created_at { Faker::Date.between(2.days.ago, Date.today) }
    f.reset_password_sent_at { Faker::Date.between(2.days.ago, Date.today) }
    f.reset_password_token nil
    f.sign_in_count { Faker::Number.number(3) }
  end
end
