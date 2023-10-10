Feature: NopCommerce Registration

  As a user I want to check the Register functionality of NopCommerce

  Background: I am on Nopcommerce Registration page
    Given I open the Google Chrome Browser
    When  I open the URL https://demo.nopcommerce.com/register
    Then  I am on NopCommerce Registration page

  Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
    When I enter first name "<First Name>"
    And  I enter last name "<Last Name>"
    And  I enter Email address "<Email>"
    And  I enter Password "<Password>"
    And  I enter Confirm Password "<Confirm Password>"
    And  Click on Register button
    Then I can see an error message "<error message>"
    And  I am not able to register

    Examples:
      | First Name | Last Name | Email               | Password | Confirm Password | error message                             |
      | ""         | Brown     | johnbrown@gmail.com | 12345    | 12345            | please enter First NAme                   |
      | John       | ""        | johnbrown@gmail.com | 12345    | 12345            | please enter Last Name                    |
      | John       | Brown     | ""                  | 12345    | 12345            | please enter valid email                  |
      | John       | Brown     | johnbrown@gmail.com | ""       | 12345            | password is required                      |
      | John       | Brown     | johnbrown@gmail.com | 12345    | ""               | confirm password is required              |
      | John       | Brown     | johnbrown@gmail.com | 12345    | 67890            | password & confirm password doesn't match |
      | John       | Brown     | johnbrown@gmail.com | 1234     | 1234             | minimum 6 character password is required  |
      | ""         | ""        | ""                  | ""       | ""               | Mandatory (*) field is required           |

  Scenario: I should be able to select any one radio button from Gender Label of Your Personal Details section
    Given I am on Gender label of Your personal details section
    When  I select "Male" radio button
    And   I select "Female" radio button
    Then  I am able to select any one of the radio button

  Scenario Outline: I should be able to select Day, Month and Year from drop down list of Date of birth field
    Given I am on Date of Birth field of Your Personal Details secton
    When  I select day "<Day>"
    And   I select month "<Year>"
    Then  I am able to select Day, Month and Year from drop down list

    Examples:
      | Day | Month   | Year |
      | 01  | January | 1995 |

    Scenario: I should to able to check and uncheck the Newsletter box on Option section
      Given I am on Newsletter label in Options section
      When  I click on Newsletter checkbox
      And   I again click in Newsletter Checkbox
      Then  I wa able to check and uncheck the box next to Newsletter label

      Scenario: I should to able to register with valid mandatory (*) field data on registration page
        When I enter First name "John"
        And  I enter Last name "Brown"
        And  I enter Email "johnbrown@gmail.com"
        And  I enter Password "12345"
        And  I enter Confirm Password "12345"
        And  I click on Register button
        Then I was able to register successfully

        

