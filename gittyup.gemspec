# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gittyup/version'

Gem::Specification.new do |gem|
  gem.name          = "gittyup"
  gem.version       = Gittyup::VERSION
  gem.authors       = ["Paul Morganthall"]
  gem.email         = ["pcm@morganthall.com"]
  gem.description   = %q{New users to git and Heroku sometimes have trouble
                         with the syntax of the git commands required to deploy
                         an application to Heroku. This wrapper combines
                         the git add, commit, and push commands needed. The
                         command has no arguments. The user is prompted for a
                         commit message. The wrapper contains no error handling,
                         so the user will receive errors from git.
                         }
  gem.summary       = %q{wrapper for git add/commit/push to Heroku}
  gem.homepage      = "http://github.com/slothbear/gittyup"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency('aruba', '~> 0.5.1')
end
