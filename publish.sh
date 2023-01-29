# Description: Publishes the docker image to docker hub
set -e

IMAGE=jupegarnica/noop

docker build -t $IMAGE .

docker scan $IMAGE

docker login

docker push $IMAGE
