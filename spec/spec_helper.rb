require 'simplecov'
SimpleCov.start
SimpleCov.command_name 'MiniTest:specs'
require "rubygems"
require "bundler/setup"
require 'minitest/autorun'
require 'minitest/reporters'
require "minitest/matchers"

# To select a different reporter copy the spec/spec_config.rb.example to
# spec/spec_config.rb and select the reporter you wish to use.
@spec_options = { minitest_reporter: "Default" }
require 'spec_config' if File.exists?('spec/spec_config.rb')
MiniTest::Reporters.use!(eval("MiniTest::Reporters::#{@spec_options[:minitest_reporter]}Reporter.new"))

require('code2rubylearning')
require('code2rubylearning/version')

include Code2rubylearning
