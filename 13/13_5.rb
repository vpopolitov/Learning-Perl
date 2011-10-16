Dir.entries(Dir.pwd).each do |e|
  puts "#{e}->#{File.readlink(e)}" if File.symlink? e
end
