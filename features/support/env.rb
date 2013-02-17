require 'aruba/cucumber'

Before do
  # The default ./tmp/aruba directory can't be used because it is a 
  # subdir of the gem directory, already part of a git repository.
  # We are responsible for cleaning the directory on startup.
  @dirs = ['/tmp/aruba/adcopu']
  FileUtils.rm_rf(@dirs, :secure => true)
end

