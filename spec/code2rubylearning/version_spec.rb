require "spec_helper"
include Code2rubylearning

describe "Code2rubylearning version" do

  before :each do

  end

  it "should have a version number" do
    VERSION.must_match /\d.\d.\d/
  end
end
