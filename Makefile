build:
	@docker build -t soljian/helm-kubectl:latest .

push:
	@docker push soljian/helm-kubectl:latest

full:
	@make build
	@make push

run:
	@docker run --rm -it soljian/helm-kubectl:latest sh

dev:
	@make build
	@make run