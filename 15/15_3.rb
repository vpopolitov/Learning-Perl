print "Please enter a string: "
str = gets.chomp
print "Please enter a substring: "
substr = gets.chomp

positions = []
cur_pos = nil
while cur_pos = str.index(substr, cur_pos.nil? ? 0 : cur_pos)
  positions << cur_pos
  cur_pos += 1
end

if positions.empty?
  puts "'#{str}' doesn't contain '#{substr}'"
else
  puts "Positions of '#{substr}' in '#{str}' were #{positions.join(', ')}"
end
