def get_user_info(prompt)
  print prompt
  gets.chomp
end

input_file_name = get_user_info("Enter input file name: ")
puts "File with name #{input_file_name} isn't exist" unless File.exists? input_file_name

output_file_name = get_user_info("Enter output file name: ")
if File.exists? output_file_name
  print "File with such name: #{output_file_name} will be overwritten. Are you sure? [y/n] "
  answer = gets.chomp
  exit if answer !~ /y.*/i
end

pattern = get_user_info("Enter a pattern: ")
replace = get_user_info("Enter a replace string: ")

File.open(input_file_name) do |input_file|
  File.open(output_file_name, "w") do |output_file|
    while line = input_file.gets
      output_file.puts line.gsub(/#{pattern}/, replace)
    end
  end
end
