module Code2rubylearning
  class Filter
    def initialize current_file, options
      @current_file = current_file
      @name = current_file.name
      @data = current_file.data
      @type = current_file.type
      @options = options
    end

    def apply
      header(@name) << convert(@data) << footer
    end

    def header file_name
      header = "[code #{ @type }#{@options[:linenumbers] ? ' linenumbers' : ''}]\n"
      if @options[:filenames]

        data_lines = @data.split("\n")

        if data_lines.first.include? "#!"
          bin_line = data_lines.first + "\n"
          header << bin_line
          @data = @data.gsub(bin_line, "")
        end

        header << "#filename: #{ file_name }\n"

      end
      header
    end

    def footer
      "[/code]\n"
    end

    def convert source
      source = source.gsub('<', '&lt;')
      source = source.gsub('>', '&gt;')
      source = source.gsub('Person', 'People')
    end

  end
end
