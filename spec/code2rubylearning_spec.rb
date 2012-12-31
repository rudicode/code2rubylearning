require "spec_helper"

describe Code2rubylearning do

  it "should convert a single file" do
    files = ["spec/assets/file-1.rb"]
    options = { :stdout => false }
    Code2rubylearning.start files, options

    # check if clipboard contents equal converted file
    # be careful clippy adds \r to new lines ( see clippy docs )
    from_clipboard = Clippy.paste
    from_clipboard.must_equal "[code ruby]\r\ndef hello\r\n  \"Hello\"\r\nend\r\n[/code]\r\n"

  end

  it "should convert multiple files" do
    files = ["spec/assets/file-1.rb", "spec/assets/file-2.rb"]
    options = { :stdout => false }
    Code2rubylearning.start files, options

    # check if clipboard contents equal converted file
    # be careful clippy adds \r to new lines ( see clippy docs )
    from_clipboard = Clippy.paste
    correct_response = "[code ruby]\r\ndef hello\r\n  \"Hello\"\r\nend\r\n[/code]\r\n[code ruby]\r\ndef there\r\n  \"There\"\r\nend\r\n[/code]\r\n"
    from_clipboard.must_equal correct_response

  end


end
