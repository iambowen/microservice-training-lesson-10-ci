### To start rancher and persist metadata
---

1. run `docker-compose -f rancher-server-compose.yml -up -d`
2. visit `http://localhost:8080`, walk over the UI interface and add host if you want to do access control.
3. if not, run `docker-compose -f rancher-hosts.yml -up -d`


### if you run out of docker vm disk
---
try [this](http://www.jianshu.com/p/2b756f9c10c1)
