require 'pstore'

file_name = 'perlfunc.pod'
store_name = 'pf.data'

# clear store before action
File.delete store_name

store = PStore.new(store_name)
store.transaction do
  File.open(file_name) do |f|
    while line = f.gets
      next if line !~ /^=item\s+([a-zA-Z_]\w*)/
      store[$1.to_sym] ||= $.
    end
  end
end

puts "Done!"

# check it!
store.transaction do
  store.roots.each do |root|
    puts "#{root}: #{store[root]}"
  end
end
