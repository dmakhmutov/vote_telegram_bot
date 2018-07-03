deploy:
	docker-compose pull
	docker-compose down
	docker-compose up -d
	docker rmi -f $$(docker images | grep "<none>" | awk "{print \$$3}")
