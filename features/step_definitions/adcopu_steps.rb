Given /^a blank directory$/ do
  blank_directory
end

Given /^an initialized git repository$/ do
  blank_directory
  run 'git init'
end

Given /^a git repository with pending changes$/ do
  blank_directory
  run 'git init'
  write_file('railsbridge-boston.rb', '')
end

Given /^a git repository with indexed changes$/ do
  blank_directory
  run 'git init'
  write_file('railsbridge-boston.rb', '')
  run 'git add -all'
end

Given /^there is no remote named heroku$/ do
  run_simple(unescape('git remote rm heroku'), false)
end

Given /^there is a git remote named heroku$/ do
  # The only the step that uses the heroku remote needs more time.
  # Tried 'run for up to 15 seconds', still failed at 3 seconds.
  @aruba_timeout_seconds = 15

  steps %Q{
    Given I successfully run `git remote add heroku git@heroku.com:gittyup_test_app.git`
  }
end

def blank_directory
  create_dir('repository')
  cd('repository')
end

