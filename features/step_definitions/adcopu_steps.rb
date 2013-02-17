Given /^an initialized git repository$/ do
  pending

Given /^a blank directory$/ do
  steps %Q{
    Given a directory named "adcopu_test"
    And I cd to "adcopu_test"
  }
end

