build: pull
	docker build -t agrdocker/agr_api_env:develop .

push: build
	docker push agrdocker/agr_api_env:develop

pull:
	docker pull agrdocker/agr_base_linux_env:develop

bash:
	docker run -t -i agrdocker/agr_api_env:develop bash
