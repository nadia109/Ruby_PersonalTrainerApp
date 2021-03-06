Feature: User can log into his/her account by entering email and password

As a registered user
So I can use all the features of PersonalTranierApp
I want to log into my account

Background: Start from the 'Welcome Page' page

	Given the following profiles exist:
	| email             | password     | name | weight | height |
	| myemail@email.com | thispassword | Anna | 135    | 62     |
	| other@email.com   | pass1234     | Bob  | 168    | 72     |

	And I am on the 'Welcome Page' page

Scenario: try to log into existing account
	When I fill in 'Logging ID' with myemail@email.com
	And I fill in 'Password' with thispassword
	And I press 'Sweat'
	Then I should be redirected to the 'Get Started' page
	And I should not see 'Wrong login information'

Scenario: try to log into existing account
	When I fill in 'Logging ID' with myemail@email.com
	And I fill in 'Password' with wrongpassword
	And press 'Sweat'
	Then I should see 'Wrong login information'
	Then I should be redirected to the 'Welcome Page' page
	And I should not be on the 'Get Started' page


