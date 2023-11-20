# Download Website
aria2c https://html5up.net/minimaxing/download
unzip html5up-minimaxing.zip && rm html5up-minimaxing.zip

# Create docker file
cat <<% > Dockerfile
FROM debian

RUN apt update && apt -y install apache2
WORKDIR /var/www/html
COPY . ./

EXPOSE 80
CMD apachectl -D FOREGROUND
%

# update Readme
cat <<% > README.md
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
%

# push to github
git status
git add .
git commit -m "Updated files"
git push origin main