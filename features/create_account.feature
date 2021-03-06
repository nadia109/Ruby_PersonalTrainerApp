
Feature: User can create an account by clicking 'New User' button

As a new user
So I can create a new account with my Personal Trainer Application
I want to create a profile

Background: Start from the 'Welcome Page' home page
	
	Given the following profiles exist:
	| email             | password     | name | weight | height |
	| myemail@email.com | thispassword | Anna | 135    | 62     |
	| other@email.com   | pass1234     | Bob  | 168    | 72     |

	And I am on the 'Welcome Page' home page

Scenario: initiate a new account
	When I press 'New User'
	Then I should be redirected to the 'Build Your Profile' page

Scenario: committing account information
	When I press the 'New User' button
	Then I should be redirected to the 'Build Your Profile' page
	When I enter all my information on 'Build Your Profile' page
	And I press the 'Submit' button
	Then I should see '{My name}, your profile has been successfully created'
	Then I should be redirected to the 'Get Started' page

Scenario: password entry do not match
	When I press 'New User'
	Then I should be redirected to the 'Build Your Profile' page
	When I enter all my information on 'Build Your Profile' page
	And the two passwords entered are not equal
	And I press the 'Submit' button
	Then I should see 'Password does not match'
	And I should be on the 'Build Your Profile' page

Scenario: information is missing on new account entry
	When I enter incomplete information 
	And press 'Submit'
	Then I should see 'Incomplete information, please complete all fields'
	And I should be on the 'Build Your Profile' page

