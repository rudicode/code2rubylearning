module Code2rubylearning
  class FileHandling

    attr_reader :data, :name, :type

    def initialize(file_name, options = { })
      @name = nil
      @data = ""
      @type = ""
      load_data file_name
      identify_file_type if @name
    end

    def load_data file_name

      if file_name
        if File.exists?(file_name)
          @name = file_name
          @data = IO.read(@name)
        end
      end
    end

    # Sets the @type for this file
    # check extension for known types
    # if extension fails try checking the first line
    # it may contain #! and give a clue.
    def identify_file_type
      @type = "text"
      
      data_lines = @data.split("\n")

      # check for a ruby file
      if @name.include?(".rb") ||  data_lines.first.include?("#!") && data_lines.first.include?("ruby")
        @type = "ruby"
      end

      # check for a python file
      if @name.include?(".py") ||  data_lines.first.include?("#!") && data_lines.first.include?("python")
        @type = "python"
      end

    end

  end
end
