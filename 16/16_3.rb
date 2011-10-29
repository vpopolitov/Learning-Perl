# you have to run 16_1.rb before start this script ;)
# because store_name file should be create and filled
require 'pstore'

file_name = 'perlfunc.pod'
store_name = 'pf.data'

unless ARGV[0]
  puts "You must provide entry name"
  exit
end

store = PStore.new(store_name)
store.transaction do
  if line = store[ARGV[0].to_sym]
    exec "less +#{line} #{file_name}"
  else
    puts "#{ARGV[0]}: entry unknown"
    exit
  end
end
