require 'rails_helper'

RSpec.feature "LogIns", type: :feature do

  it "should allow a user to log in" do

    password = "123456789"
    u = create( :user, password: password, password_confirmation: password )

    visit new_user_session_path

    within "#new_user" do
      fill_in "user_email", with: u.email
      fill_in "user_password", with: password
    end

    click_button "Log in"


    expect( User.find(1).sign_in_count ).to eq(1)
  end

end
