Feature: Combine git add, commit, and push into one command
  As an aspiring web developer with little 'git' experience
  I want to deploy my changes to Heroku with one command
  So that everyone in the world can see them

Scenario: The git repository does not exist
  Given a blank directory
  When I run `adcopu`
  Then the exit status should not be 0
  And the stderr should contain "Not a git repository"

Scenario: No files changed (nothing to commit)
  Given an initialized git repository
  When I run `adcopu`
  Then the exit status should not be 0
  And the stdout should contain "No files have been changed"

Scenario: Errors from git add
  # The exit code from git add could be non-zero if there were
  # errors adding files to the index. How to test?

Scenario: Cannot commit without commit message
  Given a git repository with pending changes
  When I run `adcopu` interactively
  And I type ""
  Then the stderr should contain "empty commit message"
  And the exit status should not be 0

Scenario: Cannot push without a remote called 'heroku'
  Given a git repository with indexed changes
  But there is no remote called 'heroku'
  When I run `adcopu` interactively
  And I type "railsbridge workshop changes"
  Then the exit status should not be 0
  And the stderr should contain "'heroku' does not appear"

