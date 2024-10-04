build:
	docker build -t nginx-proxy .

run:
	docker run -d -p 80:80 --name nginx-proxy nginx-proxy

discard:
	docker stop nginx-proxy
	docker rm nginx-proxy