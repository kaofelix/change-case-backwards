Feature: Upcase words
  Background:
    Given I have a buffer "*upcase-words*" with text:
    """
    quite some words
    """
    And I bind key "C-c u" to "upcase-word-backward"

  Scenario: Upcasing a word
    When I place the cursor after "words"
    And I press "C-c u"
    Then I should see "quite some WORDS"
    And the cursor should be after "WORDS"

  Scenario: Upcasing many words
    When I place the cursor after "words"
    And I press "C-c u" 2 times
    Then I should see "quite SOME WORDS"
    When I press "C-c u"
    Then I should see "QUITE SOME WORDS"
    And the cursor should be after "WORDS"
