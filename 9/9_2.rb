file_name = ARGV.first || 'perlfunc.pod'

File.open(file_name) do |f|
  while line = f.gets
    print line if line =~ /^=item\s+[a-z_]\w*/i
  end
end
