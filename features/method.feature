Feature: Execute API method

  Executes a method against the Flickr API

  Background:
    Given I call an API method


  Scenario: Valid API call

    When I make a valid API call
    Then I see the expected response


  Scenario: Invalid API call

    When I make an invalid API call
    Then I see a message informing me why my API call was invalid
