# Docker stack deployment

As docker-compose no longer exists, you can still deploy a stack of containers using the following steps:

	docker swarm init
	docker stack deploy --compose-file goat.yml goatdemo
	

The yaml [goat.yml](goat.yml) is similar to the one that was used with the old docker-compose, but the version is higher.

