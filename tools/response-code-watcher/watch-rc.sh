http_code=-1
last_http_code=-1
url=${1:-http://localhost:4503/}
for ((i=1;;i++)); 
do
    timestamp=`date +%T.%3N`
    http_code=`curl -o /dev/null -f --max-time 5 --connect-timeout 5 -w "%{http_code}" "$url" 2> error.log`
    http_code=$((http_code))

    logMsg="$timestamp $url => $http_code"
    if [[ "$http_code" = 5* ]]; then
        logMsg="$logMsg ERROR "
    else
        logMsg="$logMsg       "
    fi
    if (( http_code != last_http_code && last_http_code != -1)); then
	  echo "$logMsg CHANGED!";
    else
      if ((i % 10 == 0 )); then
         echo "$logMsg";
      fi
    fi
    last_http_code=$http_code
done