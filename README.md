# Code2rubylearning
command line tool that formats, given source code files, making them ready for pasting to the rubylearning.org forum. 

## Installation
    gem install code2rubylearning

Or add this line to your application's Gemfile:

    gem "code2rubylearning", "~> 0.1"

And then :
    bundle install

## Usage:

    $ code2rubylearning [options] file1 file2 file3 ...

Check your clipboard, the files should be ready to paste to the forum.

For more, see the [Usage Examples](https://github.com/rudicode/code2rubylearning/wiki/Usage-examples)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Development Setup

Do `bundle install`

copy `config.yaml.example` to `config.yaml`

edit `config.yaml` to your preferred testing reporter

To run minitest specs
`bundle exec rake spec`

To run test program
`bundle exec ruby bin/code2rubylearning FILE`

If the test program runs successfuly it should have copied the contents of FILE to the clipboard.

I only have a linux system to test on so could Mac and Windows users report any problems.
Just open a new issue.
