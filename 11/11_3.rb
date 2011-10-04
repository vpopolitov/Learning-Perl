if ARGV.empty?
  puts "No file names supplied!"
  exit
end

oldest_one = ARGV.inject { |oldest, current| File.mtime(current) < File.mtime(oldest) ? current : oldest }
age = (Time.now - File.mtime(oldest_one))/86_400
puts "The oldest file is #{oldest_one} and it was #{age.to_i} days old."
