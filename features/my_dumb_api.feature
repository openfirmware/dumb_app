# features/my_dumb_api.feature
Feature: My Dumb API
  In order to retrieve an API response
  As a web API developer
  I want an API to respond to my requests

  @no-throttle
  Scenario: API is available
    When I send a GET request for "http://example.com/api/"
    Then the response code should be "200"

  Scenario: Exceeding API Query Rate
    When I send more than one GET request in a second to "http://example.com/api"
    Then the response code should be "403"

