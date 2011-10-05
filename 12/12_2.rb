print "Which directory? (home catalog by default) "
dir = gets.chomp
if (dir =~ /^\s*$/)
  Dir.chdir Dir.home
else
  begin
    Dir.chdir dir
  rescue Errno::ENOENT
    puts "Can't change directory to #{dir}"
    exit
  end
end
puts Dir.entries(Dir.pwd).sort
