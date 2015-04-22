Feature: Register page
	As a user
	So that I can register myself on the website
	I want to be a member

Scenario: Successful Register
	Given I am on http://localhost:3000
	And I fill in "fname" with "First Name"
	And I fill in "lname" with "Last Name"
	And I fill in "dob" with "Date of Birth"
	And I fill in "email" with "User Name"
	And I fill in "password" with "Password"
	When I press "Sign Up"
	Then I am on http://localhost:3000/users/new

