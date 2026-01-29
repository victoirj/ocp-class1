janvictoir@Jans-MacBook-Air ex3 % oc exec mesh-client -n ex-3 -c mesh-client -- curl -v http://workshop-service.ex-3.svc.cluster.local:80
  % Total    % Received % Xferd  Average Speed  Time    Time    Time   Current
                                 Dload  Upload  Total   Spent   Left   Speed
  0      0   0      0   0      0      0      0                              0* Host workshop-service.ex-3.svc.cluster.local:80 was resolved.
* IPv6: (none)
* IPv4: 10.217.5.38
*   Trying 10.217.5.38:80...
* Established connection to workshop-service.ex-3.svc.cluster.local (10.217.5.38 port 80) from 10.217.0.123 port 34214 
* using HTTP/1.x
> GET / HTTP/1.1
> Host: workshop-service.ex-3.svc.cluster.local
> User-Agent: curl/8.18.0
> Accept: */*
> 
* Request completely sent off
< HTTP/1.1 200 OK
< date: Thu, 29 Jan 2026 06:34:09 GMT
< server: envoy
< last-modified: Thu, 29 Jan 2026 06:03:14 GMT
< etag: "45-649809cbd09b1"
< accept-ranges: bytes
< content-length: 69
< content-type: text/html; charset=UTF-8
< x-envoy-upstream-service-time: 18
< 
{ [69 bytes data]
100     69 100     69   0      0   2914      0                              0
* Connection #0 to host workshop-service.ex-3.svc.cluster.local:80 left intact
<!DOCTYPE html>
<html>
<body>
<h1>VERSI VERSA 1</h1>
</body>
</html>
