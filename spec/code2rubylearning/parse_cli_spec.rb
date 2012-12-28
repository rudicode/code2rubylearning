require "spec_helper"

describe "ParseCLI" do
  before :each do
    #
  end

  describe ".parse" do
    it "should parse command line into files and options" do
      cmd_line         = ['file1.rb', '-b', '--help', 'file2.rb', 'file3.txt']

      expected_files   = ['file1.rb', 'file2.rb', 'file3.txt']
      expected_options = ['-b', '--help']
      ParseCLI.parse cmd_line
      ParseCLI.files.must_equal   expected_files
      ParseCLI.options.must_equal expected_options
    end
  end

end
