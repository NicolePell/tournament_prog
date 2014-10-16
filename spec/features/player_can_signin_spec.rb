require 'spec_helper'

feature "player signs in" do

	before(:each) do
    Player.create(:email => "dan@dan.com",
                	:password => 'test',
                	:password_confirmation => 'test' )
	end

	scenario "with correct credentials" do
		visit '/'
		sign_in('dan@dan.com', 'test')
		expect(page).to have_content("Welcome, dan@dan.com")
	end

	scenario "with incorrect credentials" do
		visit '/'
		sign_in('dan@dan.com', 'wrong')
		expect(page).not_to have_content("Welcome, dan@dan.com")
	end

feature "Player signs out" do

  before (:each) do
    Player.create(:email => "alex@alex.com",
                :password => 'test',
                :password_confirmation => 'test')
  end

  scenario 'while being signed in' do
    sign_in('alex@alex.com', 'test')
    click_button "Sign out"
    expect(page).to have_content("Goodbye!")
    expect(page).not_to have_content("Welcome, test@test.com")
  end
end

end