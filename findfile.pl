use File::Find;
use Cwd;
my $file_size;
$file_size =0;
find(\&print_name_if_dir,"C:\\Yun\."); #"C:\\"); #
print "total size:$file_size\n";

sub print_name_if_dir
{
    #print "dir: $_:\n" if -d;
    #print "fiel: $_:\n" if -f;
    my $cwd = cwd();
   
    #print "$cwd";
    if (-f $_) {
    	my $size = -s $_;
    	if(/2020_w2.pdf/) {
    		print "$cwd\/$_: $size\n";
    	}
    	$file_size = $file_size + $size;
    }
}
