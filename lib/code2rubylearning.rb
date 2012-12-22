require 'clippy'
require "code2rubylearning/version"

module Code2rubylearning
  # Your code goes here...
  class Filter
    def initialize
      
    end
    def copy_to_clipboard data, options = {}
      # usage
      # copy_to_clipboard data, type: 'ruby', target: 'clipboard'

      Clippy.copy data
    end

    def paste_from_clipboard
      Clippy.paste
    end
    
  end

  class FileHandling
    def initialize(file)
      load_data file
    end

    def get_data
      @data 
    end

    def get_file file
      load_data file
      @data
    end

    private
    def load_data file
      @data = "" 
      if file
        @file = file
        if File.exists?(@file)
          @data = IO.read(@file)
        end
      end
    end

  end
end
