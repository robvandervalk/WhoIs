#!/bin/bash
echo "Please, enter a domain name like \"google.com"\"
read DOMAINNAME
whois $DOMAINNAME | grep "Domain Name\|Registrant Organization\|Registrant Street\|Registrant City"
