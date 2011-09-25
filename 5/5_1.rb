last_names = {"fred" => "flintstone", "barney" => "rubble", "wilma" => "flintstone"}
puts "Please enter a first name. If you want to quit, press <Enter>."
loop do
  first_name = gets.chomp
  break if first_name.empty?
  puts "That's name has #{last_names[first_name]} last name"
end
