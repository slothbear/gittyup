Given /^there is a git remote named heroku$/ do
  steps %Q{
    Given I successfully run `git remote add heroku git@heroku.com:adcopu_test_app.git`
  }
  # Only the step that uses the heroku remote needs more time.
  @aruba_timeout_seconds = 15
end

Given /^an initialized git repository$/ do
  steps %Q{
    Given a blank directory
    And I successfully run `git init`
  }
end

Given /^a blank directory$/ do
  steps %Q{
    Given a directory named "repository"
    And I cd to "repository"
  }
end

Given /^a git repository with pending changes$/ do
  steps %Q{
    Given an initialized git repository
    And an empty file named "railsbridge-boston.rb"
  }
end

Given /^a git repository with indexed changes$/ do
  steps %Q{
    Given a git repository with pending changes
    And I successfully run `git add --all`
  }
end

Given /^there is no remote called 'heroku'$/ do
  steps %Q{
    Given I run `git remote rm heroku`
  }
end

