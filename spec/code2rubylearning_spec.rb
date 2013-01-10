require "spec_helper"

describe Code2rubylearning do
  before :each do
    @options = { :stdout => false , :prg_link => false }
  end

  it "should convert a single file" do
    files = ["spec/assets/file-1.rb"]
    from_clipboard = Code2rubylearning.start files, @options

    from_clipboard.must_equal "[code ruby]\r\ndef hello\r\n  \"Hello\"\r\nend\r\n[/code]\r\n"

  end

  it "should convert multiple files" do
    files = ["spec/assets/file-1.rb", "spec/assets/file-2.rb"]
    from_clipboard = Code2rubylearning.start files, @options

    correct_response = "[code ruby]\r\ndef hello\r\n  \"Hello\"\r\nend\r\n[/code]\r\n[code ruby]\r\ndef there\r\n  \"There\"\r\nend\r\n[/code]\r\n"
    from_clipboard.must_equal correct_response

  end

  it "should add a program link to the end if :prg_link is true" do
    @options = { :prg_link => true }
    files = ["spec/assets/file-1.rb", "spec/assets/file-2.rb"]
    from_clipboard = Code2rubylearning.start files, @options
    
    correct_response = "<a href=\"https://github.com/rudicode/code2rubylearning/wiki\">Posted with code2rubylearning v"
    from_clipboard.must_include correct_response

  end

end
