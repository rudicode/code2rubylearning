require 'clippy'
require 'code2rubylearning/version'
require 'code2rubylearning/filter'
require 'code2rubylearning/filehandling'

module Code2rubylearning

  extend self

  def start files, options
    @buffer = ""

    files.each do |file|
      current_file = FileHandling.new(file)
      current_data = current_file.data
      filter = Filter.new(options)
      @buffer << filter.apply(current_data, file)
    end

    if options[:prg_link]
      @buffer << "<a href=\"https://github.com/rudicode/code2rubylearning/wiki\">Posted with code2rubylearning v#{ VERSION }</a>\n"
    end
    Clippy.copy @buffer unless @buffer.empty?
    puts @buffer if options[:stdout]
  end

end

