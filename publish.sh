# Description: Publishes the docker image to docker hub
set -e

TAG=$(git rev-parse --short HEAD)
DATE=$(date -u +"%Y-%m-%d")
echo "Tag: $TAG"
echo "Date: $DATE"

IMAGE=jupegarnica/noop

docker build -t $IMAGE .

docker scan $IMAGE

docker login

docker tag $IMAGE $IMAGE:latest
docker tag $IMAGE $IMAGE:$TAG
docker tag $IMAGE $IMAGE:$DATE

docker push $IMAGE:latest
docker push $IMAGE:$TAG
docker push $IMAGE:$DATE