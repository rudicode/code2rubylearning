module Code2rubylearning
  class Filter
    def initialize
      
    end

    def apply input, file_name
      add_header(file_name) <<  convert(input) << add_footer
    end

    def add_header file_name
      "[code ruby]#filename: #{ file_name }\n[/code]\n[code ruby]\n"
    end

    def add_footer
      "[/code]\n"
    end

    def convert source
      source.gsub('<','&lt;')
    end

  end
end
