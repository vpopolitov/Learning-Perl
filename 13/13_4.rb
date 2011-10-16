# as a first argument this program takes a name of source file
# as a second argument it can take name of destination file of name of existing directory
# program can take an optional parameter "-s"

is_symlink = ARGV[0] == '-s'
ARGV.shift if is_symlink
source, dest = ARGV

if File.directory? dest
  file_name = File.basename source
  dest = File.join dest, file_name
end

File.public_send (is_symlink ? :symlink : :link), source, dest
