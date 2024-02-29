#### Remove all images
docker rm $(docker ps --all -q) 

#### Create new image with tag mary-cicd-task
docker build -t mary-cicd-task .

#### Start container and map to 5000
docker run -p 5000:5000 mary-cicd-task

#### View application
Click on 127.x.x.x:xxxx link to view the final output
