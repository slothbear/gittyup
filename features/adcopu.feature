Feature: Combine git add, commit, and push into one command
  As an aspiring web developer with little 'git' experience
  I want to deploy my changes to Heroku with one command
  So that everyone in the world can see them

Scenario: The git repository does not exist
  Given a directory named "blank_directory"
  And I cd to "blank_directory"
  When I run `adcopu`
  Then the exit status should not be 0
  And the stderr should contain "Not a git repository"

