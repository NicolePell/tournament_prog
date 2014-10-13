require 'spec_helper'

feature "User can sign up" do
	
	scenario "when opening the home page" do
		visit '/'
		expect(page).to have_content("Sign up to the Makers Table Tennis Tournament")
	end

	scenario "when being logged out" do
		expect{ sign_up }.to change(Player, :count).by(1)
		expect(page).to have_content("Welcome, nic@example.com")
		expect(Player.first.email).to eq("nic@example.com")
	end

	def sign_up(email = "nic@example.com",
		password = "nuts")
		visit '/player/new'
		expect(page.status_code).to eq(200)
		fill_in :email, with: email
		fill_in :password, with: password
		click_button "Enter Tournament"
	end


end