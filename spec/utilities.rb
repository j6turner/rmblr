def sign_in_user(user)
  visit '/'
  click_on "LogIn"
  fill_in "Email", with: user.email
  fill_in "Password", with: user.password
  save_screenshot('Desktop/file9.png')
  click_on 'Log in'
end
