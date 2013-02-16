require 'bundler'
require 'cucumber'
require 'cucumber/rake/task'

Bundler::GemHelper.install_tasks

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "features --format pretty -x"
  t.fork = false
end

task :default => 'features'

