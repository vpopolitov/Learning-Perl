print "Enter width: "
width = gets.chomp.to_i

puts "Enter some lines, then press Ctrl-D."
list = readlines.map { |line| line.chomp }

# Header is printed as ruler string
puts "1234567890" * ((width + 9) / 10) # This graceful string is taken from original solution

list.each { |line| puts "%#{width}s" % line}
