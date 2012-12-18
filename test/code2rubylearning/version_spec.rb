require "./test/minitest_helper"

describe Code2rubylearning do
  
  it "should have a version number" do
    ::Code2rubylearning::VERSION.must_match /\d.\d.\d/
  end
end

