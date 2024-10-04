build:
	docker build -t nginx-custom .
run:
	docker run -d -p 80:80 --name nginx-custom nginx-custom
create-repo:
	aws ecr create-repository --repository-name thefullstack/nginx-custom
push:
	docker tag nginx-custom:latest 820242930882.dkr.ecr.us-east-1.amazonaws.com/thefullstack/nginx-custom:latest
	docker push 820242930882.dkr.ecr.us-east-1.amazonaws.com/thefullstack/nginx-custom:latest
discard:
	docker stop nginx-custom
	docker rm nginx-custom