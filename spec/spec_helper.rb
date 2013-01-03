require 'simplecov'
SimpleCov.start
SimpleCov.command_name 'MiniTest:specs'
require "rubygems"
require "bundler/setup"
require 'minitest/autorun'
require 'minitest/reporters'
require "minitest/matchers"
require 'yaml'

begin
  choice = YAML.load_file( 'config.yaml' )
  MiniTest::Reporters.use!(eval("MiniTest::Reporters::#{choice}Reporter.new"))
rescue NameError, Errno::ENOENT
  STDERR.puts <<-EOWARNING
  #{'+-' * 33}
  You either don't have a config.yaml file in your project root, or
  you need to uncomment one of the choices from the menu.
  #{'+-' * 33}
  EOWARNING
  raise
end
require('code2rubylearning')
require('code2rubylearning/version')

include Code2rubylearning
