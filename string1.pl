#$mystring = "The start text always precedes the end of the end text.";
#if($mystring =~ m/start(.*?)end/) {
	#print $1;
}




$mystring = "[2004/04/13] The date of this article.";
if($mystring =~ m/(\d)/) {
	print "The first digit is $1.";
}

This is my first perl program.