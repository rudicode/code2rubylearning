require "spec_helper"

describe "Filter" do
  before :each do
    @options = {}
    @filter = Filter.new(@options)
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
    it "should add [code ruby] to original string" do
      original = "class Automobile < Vehicle\n  #comment\nend"
      expected = "[code ruby]\n"
      @filter.apply(original, "filename1.rb").must_include expected
    end

    it "should add [/code] to original string" do
      original = "class Automobile < Vehicle\n  #comment\nend"
      expected = "[/code]\n"
      @filter.apply(original, "filename1.rb").must_include expected
    end

  end

end
