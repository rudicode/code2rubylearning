module Code2rubylearning
  class Filter
    def initialize current_file, options
      @current_file = current_file
      @options = options
    end

    def apply #input, file_name
      # add_header(file_name) << convert(input) << add_footer
      add_header(@current_file.name) << convert(@current_file.data) << add_footer
    end

    def add_header file_name
      type = @current_file.type 
      header = "[code #{ type }]\n"
      header << "#filename: #{ file_name }\n" if @options[:filenames]
      header
    end

    def add_footer
      "[/code]\n"
    end

    def convert source
      source = source.gsub('<', '&lt;')
      source = source.gsub('>', '&gt;')
      source = source.gsub('Person', 'People')
    end

  end
end
