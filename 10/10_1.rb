right_numb = rand(100) + 1
puts "For exit enter 'quit' or 'exit'"
while (true)
  print "Please enter a number: "
  numb_str = gets.chomp
  if numb_str =~ /quit|exit|^\s*$/i
    puts "You're looser :( #{right_numb} was a valid number"
    break
  end
  begin
    numb = Integer(numb_str)
    if numb > right_numb
      puts "Entered number is too big"
    elsif numb < right_numb
      puts "Entered number is too small"
    else
      puts "You're winner!!"
      break
    end
  rescue ArgumentError
    puts "Enter a valid sequence"
  end
end
