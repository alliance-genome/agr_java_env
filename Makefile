all:
	docker build -t agrdocker/agr_api_env .

push:
	docker push agrdocker/agr_api_env

pull:
	docker pull agrdocker/agr_api_env

bash:
	docker run -t -i agrdocker/agr_api_env bash
