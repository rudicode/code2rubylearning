module Code2rubylearning
  class FileHandling

    attr_reader :data

    def initialize(file)
      load_data file
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
