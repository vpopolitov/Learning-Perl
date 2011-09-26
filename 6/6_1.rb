if ARGV.empty?
  puts readlines.reverse
else
  ARGV.reverse.each { |arg| puts File.readlines(arg).reverse }
end
