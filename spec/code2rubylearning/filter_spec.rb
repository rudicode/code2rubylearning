require "spec_helper"

describe "Filter" do
  before :each do
    @options = {}
    @original_file = FileHandling.new("spec/assets/file-1/rb")
    @filter = Filter.new(@original_file, @options)
  end

  describe ".convert" do
    it "should convert single < to &lt; in a string" do
      original = 'class Automobile < Vehicle'
      expected = 'class Automobile &lt; Vehicle'
      @filter.convert(original).must_equal expected
    end

    it "should convert multiple << to &lt;&lt; in a string" do
      original = 'my_array << "some string"'
      expected = 'my_array &lt;&lt; "some string"'
      @filter.convert(original).must_equal expected
    end

    it "should convert single > to &gt; in a string" do
      original = 'class Automobile > Vehicle'
      expected = 'class Automobile &gt; Vehicle'
      @filter.convert(original).must_equal expected
    end

    it "should convert multiple >> to &gt;&gt; in a string" do
      original = 'my_array >> "some string"'
      expected = 'my_array &gt;&gt; "some string"'
      @filter.convert(original).must_equal expected
    end

  end

  describe ".apply" do
    before :each do
      # @original = "class Automobile < Vehicle\n  #comment\nend"
      @options = {}
      @original_file = FileHandling.new("spec/assets/file-1/rb")
      @filter = Filter.new(@original_file, @options)
    end

    it "should add [code ruby] to original string" do
      expected = "[code ruby]\n"
      @filter.apply.must_include expected
    end

    it "should add [/code] to original string" do
      expected = "[/code]\n"
      @filter.apply.must_include expected
    end
  end

  # move this to FileHandling specs
  # describe ".determine_code_format" do

  #   it "should identify a ruby file by extension" do
  #     @filter.identify_code_format("hello.rb").must_equal "ruby"  
  #   end
  # end

end
