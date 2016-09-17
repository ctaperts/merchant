FactoryGirl.define do
  #factory(:user) do |f|
    #f.admin false
    #f.current_sign_in_at { Faker::Date.between(2.days.ago, Date.today) }
    #f.current_sign_in_ip { Faker::Internet.ip_v4_address }
    #f.email { Faker::Internet.email }
    #f.encrypted_password { Faker::Internet.password(10, 20) }
    #f.last_sign_in_at { Faker::Date.between(2.days.ago, Date.today) }
    #f.last_sign_in_ip { Faker::Internet.ip_v4_address }
    #f.remember_created_at { Faker::Date.between(2.days.ago, Date.today) }
    #f.reset_password_sent_at { Faker::Date.between(2.days.ago, Date.today) }
    #f.sign_in_count { Faker::Number.number(3) }
    #f.password              "arenaren"
    #f.password_confirmation "arenaren"
  #end
  factory :user do
    #first                   { Faker::Name.first_name }
    #last                    { Faker::Name.last_name }
    email                   { Faker::Internet.email }
    admin                   false
    password                "secrets1"
    password_confirmation   "secrets1"
    #confirmed_at            Date.today

    factory :admin do
      admin               true
    end
  end
end
