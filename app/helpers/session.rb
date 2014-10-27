module SessionHelpers

		def sign_up( name = "nic", 
			email = "nic@example.com",
		password = "nuts",
		password_confirmation = "nuts")
		visit '/player/new'
		expect(page.status_code).to eq(200)
		fill_in :name, with: name
		fill_in :email, with: email
		fill_in :password, with: password
		fill_in :password_confirmation, with: password_confirmation
		click_button "Enter Tournament"
	end

	def sign_in(email, password)
		visit '/sessions/new'
		fill_in 'email', with: email
		fill_in 'password', with: password
		click_button 'Sign in'
	end

end