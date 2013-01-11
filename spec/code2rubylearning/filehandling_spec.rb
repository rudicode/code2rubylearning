require "spec_helper"

describe "FileHandling" do
  describe "valid files" do
    before :each do
      @valid_file_name = "spec/assets/file-1.rb"
      @valid_file = FileHandling.new(@valid_file_name)
    end
  
    it "should set the name of the file" do
      @valid_file.name.must_equal @valid_file_name
    end

    it "should set the data to the contents of the file" do
      expected = "def hello\n  \"Hello\"\nend\n"
      @valid_file.data.must_equal expected
    end

    it "should set the type to ruby" do
      expected = "ruby"
      @valid_file.type.must_equal expected
    end

    it "should set the type to ruby" do
      @ruby_file_without_extension = "spec/assets/file-4"
      @ruby_file = FileHandling.new(@ruby_file_without_extension)
      expected = "ruby"
      @ruby_file.type.must_equal expected
    end

    it "unknown files should default to text" do
      @unknown = "spec/assets/file-5"
      @unknown_file = FileHandling.new(@unknown)
      expected = "text"
      @unknown_file.type.must_equal expected
    end

    it "should set the type to python" do
      @python_file_without_extension = "spec/assets/file-python"
      @python_file_with_extension = "spec/assets/file-python.py"
      @python = FileHandling.new(@python_file_without_extension)
      @python_ext = FileHandling.new(@python_file_with_extension)

      expected = "python"

      @python.type.must_equal expected
      @python_ext.type.must_equal expected
    end

  end

  describe "invalid files" do
  
    before :each do
      @invalid_file_name = "spec/assets/file_does_not_exist"
      @invalid_file = FileHandling.new(@invalid_file_name)
    end

    it "should set the name to nil" do
      @invalid_file.name.must_equal nil
    end

    it "should set the data to empty string" do
      expected = ""
      @invalid_file.data.must_equal expected
    end

    it "should set the type to empty string" do
      expected = ""
      @invalid_file.type.must_equal expected
    end

  end

end
