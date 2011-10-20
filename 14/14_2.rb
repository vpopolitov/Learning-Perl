target_dir = '/'

original_std_out = STDOUT.clone
original_std_err = STDERR.clone
out_file = 'ls.out'
err_file = 'ls.err'
STDOUT.reopen(File.open out_file, 'w')
STDERR.reopen(File.open err_file, 'w')

Dir.chdir target_dir
exec 'ls -l'

STDOUT.reopen(File.open original_std_out)
STDERR.reopen(File.open original_std_err)
