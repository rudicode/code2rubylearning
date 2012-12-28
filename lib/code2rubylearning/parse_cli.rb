module Code2rubylearning
  module ParseCLI
    
    extend self

    attr_reader :files, :options

    def parse args
      @files = []
      @options = []
      @args = args

      @args.each do |arg|
        if arg.include?('-')
          @options << arg
        else
          @files << arg
        end
      end
    end
  
  end
end
