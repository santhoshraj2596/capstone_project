#!/bin/bash
echo "enter image name to be used"
read image_name
echo "enter version"
read version
export file="/home/ubuntu/capstone_project/Dockerfile"
export buildpath="/home/ubuntu/capstone_project"
docker build -t $image_name:$version -f $file $buildpath
echo "image is built, please find below"
docker images
