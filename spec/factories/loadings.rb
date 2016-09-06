FactoryGirl.define do
  factory :loading do
    check false
    quality_check false
    check_by "MyString"
    quality_check_by "MyString"
    check_on "2016-09-05 23:11:22"
    check_quality_on "2016-09-05 23:11:22"
    line_items nil
  end
end
