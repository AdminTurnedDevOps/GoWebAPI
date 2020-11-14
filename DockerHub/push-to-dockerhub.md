# Log into Dockerhub
docker login --username=yourhubusername (you will be prompted for your password)

# Tag the Docker image
docker tag golangwebapi adminturneddevops/golangwebapi:latest

# Push the Docker image to DockerHub
docker push adminturneddevops/golangwebapi:latest