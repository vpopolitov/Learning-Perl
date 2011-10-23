File.open('numbers') do |f|
  while line = f.gets
    line.chomp!
    puts "%30s" % line.split.map(&:to_i).sort.join(' ')
  end
end
