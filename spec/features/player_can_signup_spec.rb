require 'spec_helper'

feature "User can sign up" do
	
	scenario "when opening the home page" do
		visit '/'
		expect(page).to have_content("Sign up to the Makers Table Tennis Tournament")
	end

	scenario "when being logged out" do
		expect{ sign_up }.to change(Player, :count).by(1)
		expect(page).to have_content("Welcome, nic@example.com")
		expect(Player.first.name).to eq("nic")
		expect(Player.first.email).to eq("nic@example.com")

	end

	scenario "with a password that doesn't match" do
		expect{ sign_up('nic', 'nic@example.com', 'pass', 'wrong')}.to change(Player, :count).by (0)
		expect(current_path).to eq('/player')
		expect(page).to have_content("Sorry, your passwords don't match")
	end

	scenario "with an email that is already registerd" do
		expect{ sign_up }.to change(Player, :count).by(1)
		expect{ sign_up }.to change(Player, :count).by(0)
		expect(page).to have_content("This email is already registered")
	end


end