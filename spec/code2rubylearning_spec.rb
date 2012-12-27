require "spec_helper"

describe Code2rubylearning do

  describe "FileHandling" do

    it"should have tests"

  end

  describe "Filter" do
    before :each do
      @filter = Filter.new()
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

    end

    describe ".filter" do
      it "should add [code ruby] to original string" do
        original = 'class Automobile < Vehicle\n  #comment\nend'
        expected = '[code ruby]\n'
        @filter.filter(original).must_include expected
      end

      it "should add [/code] to original string" do
        original = 'class Automobile < Vehicle\n  #comment\nend'
        expected = '[/code]\n'
        @filter.filter(original).must_include expected
      end

    end

  end

end
