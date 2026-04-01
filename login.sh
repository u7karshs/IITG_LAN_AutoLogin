#!/bin/bash
url_encode() {
   awk 'BEGIN {
      for (n = 0; n < 125; n++) {
         m[sprintf("%c", n)] = n
      }
      n = 1
      while (1) {
         s = substr(ARGV[1], n, 1)
         if (s == "") {
            break
         }
         t = s ~ /[[:alnum:]_.!~*\47()-]/ ? t s : t sprintf("%%%02X", m[s])
         n++
      }
      print t
   }' "$1"
}

#For User Input
echo -n Username:
read username
echo -n Password:
read -s passwd

#hard code
#username='YourID'
#passwd='YourPass'

magic=$(curl -X GET https://agnigarh.iitg.ac.in:1442/login? -k | grep magic | sed 's/.*name="magic" value="\(.*\)".*/\1/')
passwd=$(url_encode $passwd)

echo -------------------------
lk=$(curl -b cookiejar.txt --data "4Tredir=https%3A%2F%2Fagnigarh.iitg.ac.in%3A1442%2Flogin%3F&magic=$magic&username=$username&password=$passwd" https://agnigarh.iitg.ac.in:1442/ --insecure)

echo =========================

mu=${lk:59:59}
#use mu=${lk:72:59}, if 1200sec is not the default reload option 

echo "********"
 echo "$mu"

i=0
while true
do
    curl -k -b cookiejar.txt "$mu"  >/dev/null	
	echo "****** connected $i ******"
	((i++))
     sleep 550
done
