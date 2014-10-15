require 'spec_helper'

feature "user signs in" do

	before(:each) do
    Player.create(:email => "dan@dan.com",
                	:password => 'test',
                	:password_confirmation => 'test' )
	end

	scenario "with correct credentials" do
		visit '/'
		expect(page).not_to have_content("Welcome, dan@dan.com")
		save_and_open_page
		sign_in('dan@dan.com', 'test')
		expect(page).to have_content("Welcome, dan@dan.com")
	end




	def sign_in(email, password)
		visit '/sessions/new'
		fill_in 'email', with: email
		fill_in 'password', with: password
		click_button 'Sign in'
	end



end