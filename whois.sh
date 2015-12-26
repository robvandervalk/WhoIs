#!/bin/bash
# This script is created to have a very quick "whois" look based on your input
# and it will return 4 strings. Feel free to change these strings
# Please note: don't use this too often otherwise you could get banned
# from the WhoIs server termporarily

# First question is about the domain name
echo "Please, enter a domain name like \"google.com"\"

# Your input will be read by this script
read DomainName

# whois is going to kick off a search based on your input and it will return
# the 4 strings defined after "grep"
whois $DomainName | grep "Domain Name\|Registrant Organization\|Registrant Street\|Registrant City"

# To get the package complete I added also a "nslookup" to retrieve the
# IP address of the given DOMAINNAME
nslookup $DomainName | grep "Address"
