require 'aruba/cucumber'

Before do
  # The default ./tmp/aruba directory can't be used because it is a 
  # subdir of the gem directory, already part of a git repository.
  # We are responsible for cleaning the directory on startup.
  # Being careful, we only clean items we know we created.
  temp_dir = '/tmp/aruba/gittyup/'
  FileUtils.rm_rf(temp_dir + 'repository/.git', :secure => true)
  FileUtils.rm_f(temp_dir + 'repository/railsbridge-boston.rb')
  FileUtils.rmdir(temp_dir + 'repository')
  FileUtils.rmdir(temp_dir)

  @dirs = [temp_dir]
end

