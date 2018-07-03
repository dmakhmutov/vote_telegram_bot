deploy:
	docker-compose pull
	docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}") || echo 'docker clean'
	docker-compose down
	docker-compose up -d
