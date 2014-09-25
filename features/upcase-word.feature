Feature: Upcase words
  Background:
    Given I switch to buffer "*upcase-words*"
    And I clear the buffer
    And I insert:
    """
    some words
    """
    And I go to the beginning of the buffer
    And I bind key "C-c u" to "upcase-word-backwards"

  Scenario: Upcasing a word
    When I place the cursor after "words"
    And I press "C-c u"
    Then I should see "some WORDS"
    And the cursor should be after "WORDS"
