# Submits 12 feedback POST requests to the local server.
for iterator in {1..12}; do
  curl --path-as-is -i -s -k -X 'POST' \
    -H 'Host: localhost:3000' \
    -H 'Content-Length: 69' \
    -H 'sec-ch-ua-platform: "Linux"' \
    -H 'Accept-Language: en-US,en;q=0.9' \
    -H 'Accept: application/json, text/plain, */*' \
    -H 'sec-ch-ua: "Not-A.Brand";v="24", "Chromium";v="146"' \
    -H 'Content-Type: application/json' \
    -H 'sec-ch-ua-mobile: ?0' \
    -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36' \
    -H 'Origin: http://localhost:3000' \
    -H 'Sec-Fetch-Site: same-origin' \
    -H 'Sec-Fetch-Mode: cors' \
    -H 'Sec-Fetch-Dest: empty' \
    -H 'Referer: http://localhost:3000/' \
    -H 'Accept-Encoding: gzip, deflate, br' \
    -H 'Connection: keep-alive' \
    -b 'language=en; welcomebanner_status=dismiss; continueCode=5VQmY6EnbP3lWrDB7AP6ckcMS5u4cbTeeh15TyBcqLGg29qwyX4pOMvKLaoj' \
    --data-binary '{"captchaId":2,"captcha":"15","comment":"Abc (anonymous)","rating":4}' \
    'http://localhost:3000/api/Feedbacks/'

  echo 'Feedback Submitted'
done