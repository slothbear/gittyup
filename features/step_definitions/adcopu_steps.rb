Given /^there is a heroku remote "(.*?)"$/ do |name|
  steps %Q{
    Given I successfully run `git remote add heroku git@heroku.com:#{name}.git`
  }
end

Given /^an initialized git repository$/ do
  steps %Q{
    Given a blank directory
    And I successfully run `git init`
  }
end

Given /^a blank directory$/ do
  steps %Q{
    Given a directory named "adcopu_test"
    And I cd to "adcopu_test"
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

