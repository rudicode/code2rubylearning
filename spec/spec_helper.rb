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
File.exists?('spec/spec_config.rb') ?
  require( 'spec_config') :
  Option = {report_style: "Default"}
MiniTest::Reporters.use!(eval("MiniTest::Reporters::#{Option[:report_style]}Reporter.new"))

require('code2rubylearning')
require('code2rubylearning/version')

include Code2rubylearning
