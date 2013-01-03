module Code2rubylearning
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
