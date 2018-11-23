Feature: Execute API method

  Executes a method against the Flickr API

  Background:
    Given I call an API method


  Scenario: Valid API call

    When I make a valid API call
    Then I see the expected response


  Scenario: Invalid API key

    When I make a call with an invalid API key
    Then I see a message informing me that my API key is invalid
