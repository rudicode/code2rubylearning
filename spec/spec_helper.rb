require "rubygems"
require "bundler/setup"
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'

reporters = [ MiniTest::Reporters::DefaultReporter.new,
              MiniTest::Reporters::SpecReporter.new,
              MiniTest::Reporters::ProgressReporter.new,
              # MiniTest::Reporters::RubyMineReporter.new,
              # MiniTest::Reporters::RubyMateReporter.new,
              MiniTest::Reporters::GuardReporter.new,
              ]
MiniTest::Reporters.use! [reporters[1]]
#MiniTest::Reporters.use! [reporters.sample]

require('code2rubylearning')
require('code2rubylearning/version')
