build: pull
	docker build -t agrdocker/agr_java_env .

push: build
	docker push agrdocker/agr_java_env:latest

pull:
	docker pull agrdocker/agr_base_linux_env

bash:
	docker run -t -i agrdocker/agr_api_env bash
