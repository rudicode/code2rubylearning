module Code2rubylearning
  class Filter
    def initialize
      
    end
    def copy_to_clipboard data, options = {}
      # usage will be
      # copy_to_clipboard data, type: 'ruby', target: 'clipboard'

      Clippy.copy data
    end

    def paste_from_clipboard
      Clippy.paste
    end

    def filter input
      '[code ruby]\n' <<  input << '[/code]\n'
    end

    def convert source
      source.gsub('<','&lt;')
    end
    
  end
end
