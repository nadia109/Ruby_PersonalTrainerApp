Feature: view saved workouts

As a registered user
So I can quickly see my workouts
I want to see all my workouts listed

Background: Start at the 'Get Started' page

	Given the following workouts exist:
	| name     | profile_id |
	| workout1 | 1          |
	| workout2 | 1          |
	| workout3 | 1          |
	| workout4 | 1          |
	| workout5 | 2          |

	And I am logged in as 1
	And I am on the 'Get Started' page
	

Scenario: my workouts are displayed
	Then I should see 'workout1'
	And I should see 'workout2'
	And I should see 'workout3' 
	And I should see 'workout4'
	And I should not see 'workout5'

