module Code2rubylearning
  class FileHandling
    attr_reader :data, :name, :type

    KNOWN_LANGUAGES = {
      ruby: '.rb',
      python: '.py',
      text: '.txt',
    }

    def initialize(file_name)
      @name = nil
      @data = ""
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

      data_lines = @data.split("\n")

      # Check for known File Type
      KNOWN_LANGUAGES.each do |language, extension|
        (@name.include?(extension) ||  data_lines.first.include?("#!") && data_lines.first.include?(language.to_s)) && @type = language.to_s
      end

      @type ||= 'text'
    end

  end
end
