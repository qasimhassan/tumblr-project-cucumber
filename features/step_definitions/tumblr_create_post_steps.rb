Given(/^I am on the Tumblr dashboard page$/) do
  @system.tumblr_login.visit
  @system.tumblr_login.put_email
  @system.tumblr_login.next_btn
  @system.tumblr_login.put_password
  @system.tumblr_login.next_btn

  @system.tumblr_dashboard.check_dashboard
end

Then(/^I should click on the new text post button$/) do
  @system.tumblr_dashboard.new_post_btn.click
end

And(/^enter a title for my new post$/) do
  @system.tumblr_dashboard.put_title
end

And(/^some body text for my new post$/) do
  @system.tumblr_dashboard.put_body
end

Then(/^click the post button$/) do
  
end
