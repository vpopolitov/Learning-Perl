# you have to run 16_1.rb before start this script ;)
# because store_name file should be create and filled
require 'pstore'

store_name = 'pf.data'

unless ARGV[0]
  puts "You must provide entry name"
  exit
end

store = PStore.new(store_name)
store.transaction do
  line = store[ARGV[0].to_sym] || "not found"
  puts "#{ARGV[0]}: #{line}"
end
