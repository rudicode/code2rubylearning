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

    it "should set the type to the correct programming language" do
      expected = "ruby"
      @valid_file.type.must_equal expected
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
