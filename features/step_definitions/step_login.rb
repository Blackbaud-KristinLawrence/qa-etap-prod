Given(/^I navigate to Fullhouse$/) do
  Admin::Login.new.login_nav
end

When(/^I login into eTap$/) do
 page =  Admin::Login.new()
 page.create
 page.log_in

end

When(/^I am logged into eTap$/) do
 landing = Admin::Landing.new
 unless landing.logged_in?
   step "I navigate to Fullhouse"
   step "I login into eTap"
 end
end

When(/^I log out of eTap$/) do
  landing = Admin::Landing.new
  landing.log_out
end

Then(/^I should be logged out of eTap$/) do
  page = Admin::Login.new
  expect(page.logged_out?).to eq(true)
end
