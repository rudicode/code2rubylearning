
  def initialize *args
    @files = []
    @switches = []
    until args.first.to_s.include?('-') == false
      tmp_switch = args.shift
      @switches.push(tmp_switch)
    end
    until args.empty?
      tmp_file = args.shift
      @files.push(tmp_file)
    end
  end
end
