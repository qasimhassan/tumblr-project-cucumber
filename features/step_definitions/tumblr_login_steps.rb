Given(/^I am on the tumblr website login page$/) do
  @system.tumblr_login.visit
end

Then(/^I should put the email address in the email text field$/) do
  @system.tumblr_login.set_email_text_field
end

And(/^Click the next button$/) do
  @system.tumblr_login.next_btn.click
end

Then(/^I should put the password in the password text field$/) do
  @system.tumblr_login.set_password_text_field
end

And(/^Click the login button$/) do
  @system.tumblr_login.next_btn.click
end
