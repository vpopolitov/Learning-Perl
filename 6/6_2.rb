puts "Enter some lines, then press Ctrl-D."
list = readlines.map { |line| line.chomp }

# Header is printed as ruler string
1.upto(75).each { |i| print i % 10 }
puts

list.each { |line| puts '%20s' % line}
