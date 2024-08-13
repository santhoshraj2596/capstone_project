#!/bin/bash
source build.sh
echo "provide container_name"
read container_name
echo "enter host and container port"
read host
read contport
export existingcontainer=$(docker ps -a --format "{{.Names}}")
for i in "${existingcontainer[@]}"
do 
  if [ "$i" == "$container_name" ] 
  then
  docker stop $container_name
  docker rm $container_name
  echo "container $container_name already exist, will be removed"
  else
  echo "container will be created"
  fi
done
docker run -d -p $host:$contport --name $container_name $image_name:$version
echo "container is created please find the below"
docker ps -a
