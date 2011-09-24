def total(numbers)
  numbers.map { |n| n.to_i }.inject { |i, sum| i + sum }
end

puts "Result for hard-coded array:"
puts total %w{1 3 5 7 9}

puts "Result for user input. Please enter some numbers one per line, then press Ctrl-D:"
puts total readlines
