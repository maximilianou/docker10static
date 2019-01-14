``
on@educacion:~/src/docker10static/docker10static$ docker build -t nginx/dev_static .
Sending build context to Docker daemon  33.79kB
Step 1/4 : FROM nginx:stable AS dev_static
 ---> 3f55d5bb33f3
Step 2/4 : COPY ./frontend/ /var/www/
 ---> Using cache
 ---> 1dc6d25a0678
Step 3/4 : COPY ./etc/nginx.conf /etc/nginx/conf.d/default.conf
 ---> Using cache
 ---> 91972ba29304
Step 4/4 : EXPOSE 80
 ---> Using cache
 ---> f37c2f0899d1
Successfully built f37c2f0899d1
Successfully tagged nginx/dev_static:latest
educacion@educacion:~/src/docker10static/docker10static$ docker run -p 8181:80 nginx/dev_static
172.17.0.1 - - [14/Jan/2019:17:33:00 +0000] "GET / HTTP/1.1" 200 229 "-" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36" "-"
172.17.0.1 - - [14/Jan/2019:17:33:00 +0000] "GET /favicon.ico HTTP/1.1" 200 229 "http://localhost:8181/" "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36" "-"
^Ceducacion@educacion:~/src/docker10static/docker10static$ ls
Dockerfile  etc  frontend
educacion@educacion:~/src/docker10static/docker10static$ hg add .
educacion@educacion:~/src/docker10static/docker10static$ hg commit -u maximilianou@gmail.com -m 'fixing Dockerfile'
educacion@educacion:~/src/docker10static/docker10static$ hg push

``
