Feature: Signing up for the tournament
	In order to play in the table tennis tournament
	As a cohort member
	I want to sign up on the homepage

	Scenario: Signing up
		Given that I am on the homepage
		When I click 'Sign Up'
		Then I should see "What's your name"


	Scenario: Signing Up Step 2
		Given that I am on the Sign Up page
		When I enter my name
		And I click 'Register'
		Then I should see "Thank you for registering"

