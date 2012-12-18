require 'clippy'
require "code2rubylearning/version"

module Code2rubylearning
  # Your code goes here...
  extend self
  def copy_clipboard data
    Clippy.copy data
  end

  def paste_clipboard
    Clippy.paste
  end

end
