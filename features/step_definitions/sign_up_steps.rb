Given(/^that I am on the homepage$/) do
  visit ('/')
end

When(/^I click 'Sign Up'$/) do
  click_on 'Sign Up'
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^that I am on the Sign Up page$/) do
  visit ('/sign_up')
end

When(/^I enter my name$/) do
  fill_in('name', :with => "Nicole") 
end

Then(/^I click 'Register'$/) do
  click_on "Register"
end
