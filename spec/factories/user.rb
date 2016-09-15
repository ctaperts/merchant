FactoryGirl.define do
  factory(:user) do
    admin true
    current_sign_in_at "2016-09-11T18:55 UTC"
    current_sign_in_ip "ToFactory: RubyParser exception parsing this attribute"
    email "test@email.com"
    encrypted_password "ToFactory: RubyParser exception parsing this attribute"
    last_sign_in_at "2016-09-11T18:55 UTC"
    last_sign_in_ip "ToFactory: RubyParser exception parsing this attribute"
    remember_created_at nil
    reset_password_sent_at nil
    reset_password_token nil
    sign_in_count 1
  end
end
