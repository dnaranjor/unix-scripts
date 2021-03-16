#! /bin/bash
echo "Enter the NEW TAG for Docker image ui-invoice-monitor-container: (mas-00XXX)"
read TAG1
echo "Enter the NEW TAG for Docker image ui-invoice-monitor-documents: (mas-00XXX)"
read TAG2
echo "Enter the NEW TAG for Docker image ui-invoice-monitor-navigation: (mas-00XXX)"
read TAG3
echo "Enter the NEW TAG for Docker image ui-invoice-monitor-login: (mas-00XXX)"
read TAG4
echo ********************
echo Pulling images from delta-docker-dev-local...
echo ********************
docker pull sp3devartifactory.dev.sovos.org/delta-docker-dev-local/ui-invoice-monitor-documents:$TAG1
docker pull sp3devartifactory.dev.sovos.org/delta-docker-dev-local/ui-invoice-monitor-navigation:$TAG2
docker pull sp3devartifactory.dev.sovos.org/delta-docker-dev-local/ui-invoice-monitor-login:$TAG3
docker pull sp3devartifactory.dev.sovos.org/delta-docker-dev-local/ui-invoice-monitor-container:$TAG4

echo ********************
echo Tagging...
echo ********************
docker tag sp3devartifactory.dev.sovos.org/delta-docker-dev-local/ui-invoice-monitor-documents:$TAG1 sp3devartifactory.dev.sovos.org/delta-docker-release-local/ui-invoice-monitor-documents:$TAG1
docker tag sp3devartifactory.dev.sovos.org/delta-docker-dev-local/ui-invoice-monitor-navigation:$TAG2 sp3devartifactory.dev.sovos.org/delta-docker-release-local/ui-invoice-monitor-navigation:$TAG2
docker tag sp3devartifactory.dev.sovos.org/delta-docker-dev-local/ui-invoice-monitor-login:$TAG3 sp3devartifactory.dev.sovos.org/delta-docker-release-local/ui-invoice-monitor-login:$TAG3
docker tag sp3devartifactory.dev.sovos.org/delta-docker-dev-local/ui-invoice-monitor-container:$TAG4 sp3devartifactory.dev.sovos.org/delta-docker-release-local/ui-invoice-monitor-container:$TAG4

echo ********************
echo Pushing images into delta-docker-release-local...
echo ********************
docker push sp3devartifactory.dev.sovos.org/delta-docker-release-local/ui-invoice-monitor-documents:$TAG1 
docker push sp3devartifactory.dev.sovos.org/delta-docker-release-local/ui-invoice-monitor-navigation:$TAG2
docker push sp3devartifactory.dev.sovos.org/delta-docker-release-local/ui-invoice-monitor-login:$TAG3
docker push sp3devartifactory.dev.sovos.org/delta-docker-release-local/ui-invoice-monitor-container:$TAG4

