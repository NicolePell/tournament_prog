require 'spec_helper'

feature "User can sign up" do
	
	scenario "when opening the home page" do
		visit '/'
		expect(page).to have_content("Sign up to the Makers Table Tennis Tournament")
	end


end