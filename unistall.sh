#!/bin/sh -e

/bin/rm /usr/local/bin/get-ip-address --verbose ;
/bin/rm /etc/network/if-up.d/addip2issue --verbose ;
/bin/rm /etc/issue-original --verbose ;
/bin/cp -a /etc/issue.backup_issue_brander /etc/issue --verbose ;
