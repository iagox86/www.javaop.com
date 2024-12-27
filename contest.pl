#!/usr/bin/perl

print "Content-type: text/html\n\n";

my $referer = $ENV{'HTTP_REFERER'};

if($referer =~ m/http:\/\/www.microsoft.com.*/)
{
	print "Congratulations!<br>\n<br>\n";
	print "Click <a href='contest2.html'> to continue!<br>\n";

}
else
{
	print "Denied!<br>\n";
	print "<br>\n";
	print "Sorry, your access from this page is denied.<br>\n";
	print "To access this page, you must be linked from a<br>\n";
	print "web page originating at 'http://www.microsoft.com/'.<br>\n";
	print "In other words, your referer must start with<br>\n";
	print " 'http://www.microsoft.com/'.  Come back when<br>\n";
	print "that happens!<br>\n";
	print "<br>\n";
	print "FYI, you were referred from: $referer<br>\n<br>\n";
}

print "<br>\n";



