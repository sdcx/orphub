Feature: 
As a user
I would like to log in with the username and password provided to me
so that I can use the services provided to me.

Background:
Given that I am on the homepage
And User AB1234567890 exists
And has password QwErTy01!

    Scenario: I logon successfully
		Given my username is AB1234567890
		And my password is QwErTy01!
		When I click the login button
		Then I am logged on successfully
		And I am redirected to my Dashboard

	Scenario: I logon unsuccessfully with a non-existant username
		Given my username is <username>
		And my password is <password>
		And <username> does not exist
		When I click the login button
		The I receive the message "Username does not exist"
		And I am redirected to the homepage

	Scenario: I logon unsuccessfully with an incorrect password combination
		Given my username is <username>
		And my password is <password>
		When I click the login button
		The I receive the message "Username or password incorrect"
		And I am redirected to the homepage

	Scenario: I logon unsuccessfully three times