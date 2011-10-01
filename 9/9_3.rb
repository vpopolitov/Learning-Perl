file_name = ARGV.first || 'perlfunc.pod'
seen = Hash.new(0)

File.open(file_name) do |f|
  while line = f.gets
    if line =~ /^=item\s+([a-z_]\w*)/i
      data = Regexp.last_match
      seen[data[1]] += 1
    end
  end
end

seen.sort_by { |k, v| v }.each { |k, v| puts "#{k}: #{v} times" if v > 2 }
