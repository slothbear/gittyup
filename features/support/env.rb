require 'aruba/cucumber'
require 'tmpdir'

Before do
  # The default ./tmp/aruba directory can't be used because it is a 
  # subdir of the gem directory & already part of the git repository.
  @dirs = [Dir.mktmpdir]
end

