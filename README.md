# port-checker
Script for checking connection to ports using nc.

The script checks for open ports on the provided list of host names.By default the script chekcs for ports 22,80,443.
A specific port number or a range of port numbers can also be provided.

Usage:

1.Check for only default ports:

./port-checker.sh /home/rakesh/Documents/data/domains.txt

2.Check for a specific port:

./port-checker.sh /home/rakesh/Documents/data/domains.txt 80

3.Check for range of ports:

./port-checker.sh /home/rakesh/Documents/data/domains.txt 21-80
