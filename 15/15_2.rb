last_names = %w{fred flintstone Wilma Flintstone Barney Rubble betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE}
last_names_hash = Hash[*last_names.flatten]
sorted_hash = Hash[last_names_hash.sort_by { |f, l| [l.downcase, f.downcase]}]
sorted_hash.each_pair do |f, l|
  puts "#{l}, #{f}"
end
