Feature: EmergencyContact

In order to maintain the emergency contacts
as a admin
I should be able to add,edit,delete the emergency contacts

@tag1
Scenario: Add Emergency Contact
	Given I have browser with orangehrm application
	When I enter username as 'Admin'
	And I enter username as 'admin123'
	And I click on login
	And I click on My Info
	And I click on Emergency Contact
	And I fill the form
	| contactname | relationship | hometelephone | mobile     | worktelephone |
	| Satish      | Brother      | 8787878       | 8788888989 | 878898        |
	And I click on save

	Then I should get the added contact name in the assigned contact table
