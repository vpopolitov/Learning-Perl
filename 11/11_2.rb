exist_files = Dir[*ARGV]

(ARGV - exist_files).each do |fake|
  puts "#{fake} doesn't exist"
end

exist_files.each do |entry|
  next if File.directory? entry
  attributes = []
  attributes << "readable" if File.readable? entry
  attributes << "writable" if File.writable? entry
  attributes << "executable" if File.executable? entry
  puts "#{entry} file has following attributes: #{attributes.join(', ')}"
end
