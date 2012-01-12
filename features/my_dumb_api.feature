# features/my_dumb_api.feature
Feature: My Dumb API
  In order to retrieve an API response
  As a web API developer
  I want an API to respond to my requests

  Scenario: API is available
    When I send a GET request for "http://example.com/api/"
    Then the response code should be "200"