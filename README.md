# dockerShinyChat
Code to give a quick tutorial for containerizing and running R/Shiny app. 

App code is a modified version of @trestletech's repo https://github.com/trestletech/ShinyChat

Building the image as 'shinychat' and running the app to be available at localhost:4949/shinychat is as simple as executing the following:

```
docker build -t shinychat .

docker run -p 4949:4949 shinychat
```

Alternatively the image has already been built and pushed to DockerHub tagged allej8/shinychat:latest which can be pulled and run easily with:

```
docker run -p 4949:4949 allej8/shinychat:latest
```
