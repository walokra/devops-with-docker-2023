# EXERCISE 3.4: BUILDING IMAGES INSIDE OF A CONTAINER

Dockerize a script for building GitHub repository project and pushing the image to Docker Hub.

1. Build image:

        docker build -t builder .

2. Run:

        docker run -e DOCKER_USER=$DOCKER_USER -e DOCKER_PWD=$DOCKER_PWD -v /var/run/docker.sock:/var/run/docker.sock builder walokra/devops-with-docker-2023-part3-express-app walokra/devops-with-docker-part3-express-app
