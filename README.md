# Code2rubylearning
command line tool that formats, given source code files, making them ready for pasting to the rubylearning.org forum. 

# Under Development
## Installation

Add this line to your application's Gemfile:

    gem 'code2rubylearning', :git => "https://github.com/rudicode/code2rubylearning.git", :branch => "master"

And then execute:

    $ bundle
This should install clippy 1.0.1 as well.

To see if it works

    $ bundle exec code2rubylearning

This should copy the text string "Text to copy to clip board." to your clipboard.
    
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Development Setup

Do `bundle install`

To run minitest specs
`bundle exec rake test`

To run test program
`bundle exec ruby bin/code2rubylearning FILE`

If the test program runs successfuly it should have copied the contents of FILE to the clipboard.

I only have a linux system to test on so could Mac and Windows users report any problems.
Just open a new issue.
