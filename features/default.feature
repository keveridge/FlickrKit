Feature: Default functionality

  Background:

    Given I run the shortcut


  Scenario: Message to user

    When I have not specified a method method or function call
    Then I see a message asking if I want to find out more


  Scenario: View documentation

    When I elect to find out more
    Then I see the shortcut documentation page open in Safari
