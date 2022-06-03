Feature: LoginAccount

A short summary of the feature

Scenario: Valid Credential
	Given I have browser with orangehrm application
	When I enter username as 'Admin'
	And I enter password as 'admin123'
	And I click on login
	Then I should get access to portal with url as 'https://opensource-demo.orangehrmlive.com/index.php/dashboard'

Scenario: InValid Credential
	Given I have browser with orangehrm application
	When I enter username as 'Jhon'
	And I enter password as 'Jhon123'
	And I click on login
	Then I should get access to portal with url as 'https://opensource-demo.orangehrmlive.com/index.php/dashboard'
