.PHONY: docker_image
docker_image: 
	sudo docker build -t nextjs:latest . --progress=plain

.PHONY: docker_versions
docker_versions: 
	sudo docker run --rm -ti -v "$$(pwd):/home/app" nextjs:latest node -v
	sudo docker run --rm -ti -v "$$(pwd):/home/app" nextjs:latest npm -v

.PHONY: docker_run
docker_run: 
	sudo docker run --rm -ti -v "$$(pwd):/home/app" nextjs:latest /bin/bash

# E.O.F. #