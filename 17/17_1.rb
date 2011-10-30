input_file_name = 'sample_text'

input_file = File.readlines(input_file_name)

loop do
  print 'Please enter a pattern: '
  pattern = gets.chomp
  if pattern =~ /^\s*$/
    exit
  end
  matches = []

  begin
    regexp = Regexp.new(pattern)
    input_file.each_with_index do |item, index|
      matches << index + 1 if item =~ regexp
    end
    puts "There were matches on following lines: #{matches.join(', ')}"
  rescue
    puts "Following error has occured: #{$!}"
  end
end
