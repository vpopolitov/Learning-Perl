freq = {}
words = readlines.map { |l| l.chomp }.each { |w| freq[w] = freq[w] ? freq[w] + 1 : 1 }
freq.each do |key, value|
  puts "#{key} word has seen #{value} times."
end
