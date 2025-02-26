#!/bin/sh -e

/bin/cp -a /etc/issue /etc/issue.backup_issue_brander --verbose ;
/bin/cp -a /etc/issue /etc/issue-original --verbose;
/bin/cat ./issue.base > /etc/issue-original;
/bin/cp -v ./addip2issue /etc/network/if-up.d/addip2issue;
/bin/chmod 755 /etc/network/if-up.d/addip2issue --verbose;
/bin/cp ./get-ip-address /usr/local/bin/get-ip-address --verbose;
/bin/chmod 744 /usr/local/bin/get-ip-address --verbose;
/bin/chown root:staff /usr/local/bin/get-ip-address --verbose;
