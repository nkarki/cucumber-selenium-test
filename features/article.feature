Feature: Article

  @javascript
  Scenario: List all articles
    Given there are posts "Pizza, BreadSticks"
    When I go to "the posts page"
    Then I should see "Pizza"
    And I should see "BreadSticks"
