#!/bin/sh

while : 
do
curl 'https://www.gmailnator.com/index/indexquery' \
  -H 'authority: www.gmailnator.com' \
  -H 'accept: application/json, text/javascript, */*; q=0.01' \
  -H 'content-type: application/x-www-form-urlencoded; charset=UTF-8' \
  -H 'cookie: csrf_gmailnator_cookie=573bb51e01dc88bb769c6b6bd5fca419; ci_session=91f10578779d4667a3059634faea3f3cfe7be408; __cf_bm=6g.sBA4HdZqZzZrwAedZeVN0.s1KOnfb7Ko9eVuHh_A-1651312041-0-AXCPPjd2a3udN+l8FjGjxAzhHiXX29bMpHlq/Zi+Fo0LDQkitsaN1wNsmRpRC+DTr9xzj/VbVe9VaqR2Q9ywcK7N2K0EGnEkV9Vew69NoVAJJLqCDwX3uvKgGFQ110Xxlg==' \
  -H 'dnt: 1' \
  -H 'origin: https://www.gmailnator.com' \
  -H 'referer: https://www.gmailnator.com/' \
  -H 'x-requested-with: XMLHttpRequest' \
  --data-raw 'csrf_gmailnator_token=573bb51e01dc88bb769c6b6bd5fca419&action=GenerateEmail&data%5B%5D=1&data%5B%5D=2&data%5B%5D=3' \
  --compressed --silent | jq -r '.email' >> fake-gmail.txt
sleep 2
done
