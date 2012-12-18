require "bundler/gem_tasks"
require 'rspec/core/rake_task'
require "rake/testtask"

RSpec::Core::RakeTask.new(:spec)
task :default => :spec

Rake::TestTask.new do |t|
  # t.libs << "test"
  t.pattern = "test/**/*_spec.rb"
end
