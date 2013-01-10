module Code2rubylearning
  class FileHandling

    attr_reader :data, :name, :type

    def initialize(file_name)
      load_data file_name
      identify_file_type
    end

    def load_data file_name
      @data = ""
      if file_name
        @name = file_name
        if File.exists?(@name)
          @data = IO.read(@name)
        end
      end
    end

    # TODO
    # Sets the @type for this file
    # check extension for known types
    # if extension fails try checking the first line
    # it may contain #! and give a clue.
    def identify_file_type
      @type = "ruby"
    end

  end
end
