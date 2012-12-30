require 'clippy'
require 'code2rubylearning/version'
require 'code2rubylearning/filter'
require 'code2rubylearning/filehandling'
require 'code2rubylearning/parse_cli'

module Code2rubylearning

  extend self

  def start args, options
    ParseCLI.parse args
    files   = ParseCLI.files
    options = ParseCLI.options
    @buffer = ""

    files.each do |file|
      current_file = FileHandling.new(file)
      current_data = current_file.get_data
      filter = Filter.new(options)
      @buffer << filter.apply(current_data, file)
    end

    Clippy.copy @buffer unless @buffer.empty?
    puts @buffer if options[:stdout]
  end

end

