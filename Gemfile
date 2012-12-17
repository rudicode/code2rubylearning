source 'https://rubygems.org'

# Specify your gem's dependencies in code2rubylearning.gemspec
gemspec

gem 'rake'

group :development do

  # gem 'guard-ronn'

  # gem 'yard'
  # gem 'redcarpet'

  require 'rbconfig'

  if RbConfig::CONFIG['target_os'] =~ /darwin/i
    gem 'rb-fsevent', :require => false

    if `uname`.strip == 'Darwin' && `sw_vers -productVersion`.strip >= '10.8'
      gem 'terminal-notifier-guard', '~> 1.5.3', :require => false
    else
      gem 'growl', :require => false
    end rescue Errno::ENOENT

  elsif RbConfig::CONFIG['target_os'] =~ /linux/i
    gem 'libnotify', '~> 0.8.0', :require => false
    gem 'rb-inotify', :require => false

  elsif RbConfig::CONFIG['target_os'] =~ /mswin|mingw/i
    gem 'win32console', :require => false
    gem 'rb-notifu', '>= 0.0.4', :require => false
    gem 'wdm', :require => false
  end
end

group :test do
  gem 'rspec', "~> 2.12.0"
  gem 'guard', "~> 1.5.4"
  gem 'guard-rspec', "~> 2.3.1"
end

