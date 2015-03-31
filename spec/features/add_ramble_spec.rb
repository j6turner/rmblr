require "rails_helper"

describe "add ramble" do
  it "adds a new ramble", js: true do
    test_user = FactoryGirl.create(:user)
    visit '/'
    click_on "LogIn"
    fill_in "Email", with: test_user.email
    fill_in "Password", with: test_user.password
    click_on 'Log in'
    save_screenshot('Desktop/file12.png')
    visit '/'
    fill_in "Content" , with: "Holy!"
    expect(page).to have_content("Ramble heard")
  end
end
