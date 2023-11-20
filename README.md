# Minimaxing
This is public repo for minimaxing with docker file to build image from debian apache2 and expose 80.

# Dockerize
## Build image
    docker build -t minimaxing .
## Test image
    docker run -d -p 82:80 minimaxing
**Open URL: localhost:82**
## Push to docker hub
    docker tag minimaxing reamea/minimaxing:0.0.1
    docker login
    docker push reamea/minimaxing:0.0.1
## Stop Docker run
    docker stop <CONTAINER ID>
    docker stop 6e72db6640a9
