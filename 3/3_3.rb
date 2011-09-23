res = readlines.map { |l| l.chomp }.sort

puts "First method:"
puts res.join ', '

puts "Second method:"
puts res
