class GetCommandLine 

  attr_accessor :switches, :files
  @switches = []
  @files = []
  if ARGV.empty?
    puts "Please insert the filenames you`d like processed"
    @files = gets.split
  end 
  ARGV.each do |com_line|
    if com_line.include?('-')
      @switches.push(com_line)
    else
      @files.push(com_line)
    end
    end
end
