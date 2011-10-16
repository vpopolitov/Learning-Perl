# as a first argument this program takes a name of source file
# as a second argument it can take name of destination file of name of existing directory

source, dest = ARGV

if File.directory? dest
  file_name = File.basename source
  dest = File.join dest, file_name
end

File.rename source, dest
