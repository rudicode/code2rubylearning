module Code2rubylearning
  class FileHandling

    attr_accessor :data, :name, :type

    def initialize(file_name, options = { })
      self.name = nil
      self.type = ""
      self.data = file_name
      identify_file_type if name
    end

    def data=(file_name)
      @data = ""
      if file_name
        if File.exists?(file_name)
          self.name = file_name
          @data = IO.read(name)
        end
      end
    end

    # Sets the type for this file
    # check extension for known types
    # if extension fails try checking the first line
    # it may contain #! and give a clue.
    def identify_file_type
      self.type = "text"
      
      data_lines = data.split("\n")

      # check for a ruby file
      if name.include?(".rb") ||  data_lines.first.include?("#!") && data_lines.first.include?("ruby")
        self.type = "ruby"
      end

      # check for a python file
      if name.include?(".py") ||  data_lines.first.include?("#!") && data_lines.first.include?("python")
        self.type = "python"
      end

    end

  end
end
