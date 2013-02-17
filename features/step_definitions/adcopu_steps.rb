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

