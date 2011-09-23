names = %w{fred betty barney dino wilma pebbles bamm-bamm}
puts "Enter some numbers from 1 to 7 inclusive, one per line and press Ctrl-D."
numbers = readlines.map { |l| l.to_i }
numbers.each { |n| puts names[n - 1] }
