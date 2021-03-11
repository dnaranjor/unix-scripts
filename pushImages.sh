#! /bin/bash
echo "Introduzca el TAG de la Imagen # 1:"
read TAG1
sudo docker pull alpine:latest
sudo docker tag alpine:latest dnaranjor/alpine:$TAG1
sudo docker push dnaranjor/alpine:$TAG1
#echo "Introduzca el TAG de la Imagen # 2:"
#read TAG2
#echo "Ud introdujo $TAG1 y $TAG2"
