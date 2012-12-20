class Reformat
  attr_reader :ref_file
  def initialize file_name
    file = File.open(file_name,"r") do |txt|
      @file_text = txt.read
    end
    @file_text.gsub!('<' ,'&lt;')
    @ref_file = "[code ruby]\n" << @file_text << '[/code]'
  end
end

r = Reformat.new('./again.rb')
puts r.ref_file
