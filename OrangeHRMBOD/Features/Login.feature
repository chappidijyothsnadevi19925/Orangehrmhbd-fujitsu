﻿Feature: Login
	In order to maintain employee records 
	As a admin 
	I want to access the portal 
       Background:
	   Given I have browser with orangehrm application

Scenario: Valid Credential
	Given I have browser with orangehrm application
	When I enter username as 'Admin'
	And I enter password as 'admin123'
	And I click on login
	Then I should get access to portal with url as 'https://opensource-demo.orangehrmlive.com/index.php/dashboard'

Scenario Outline: Invalid Credential
	Given I have browser with orangehrm application
	When I enter username as '<username>'
	And I enter password as '<password>'
	And I click on login
	Then I should the message as 'Invalid credentials'
	Examples: 
	| username | password |
	| Jhon     | Jhon123  |
	| Peter    | Peter123 |

