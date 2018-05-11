# Stop all containers
docker stop $(docker ps -a -q)
# Remove all containers
docker rm $(docker ps -a -q)
# Remove all volumes
docker volume rm $(docker volume ls)
# Remouve all images
docker rmi $(docker images -a -q)
# Create portainer_data for portainer
docker volume create portainer_data
# Run portainer
docker run -d -p 9000:9000 --restart always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
