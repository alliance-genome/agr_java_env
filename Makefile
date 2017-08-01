all:
	docker build -t agrdocker/agr_api_env:develop .

push:
	docker push agrdocker/agr_api_env:develop

pull:
	docker pull agrdocker/agr_api_env:develop

bash:
	docker run -t -i agrdocker/agr_api_env:develop bash
