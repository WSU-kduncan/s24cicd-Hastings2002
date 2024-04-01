### What I am doing
* I am creating a website and using docker to create a container that includes an image of my website.
* That container can be used to run and see my website

### Why I am doing
* The reason I am doing this is to track and control my code better.
* With docker, I can have separate environments that I move my codd to after certain things have been met.
* For example, once I have a grid on my website, we can move the code from Development to Stage and then from Stage to Production

### Tools (I have a mac)
* Docker Desktop
* apache2
* my brain :)

### How to run locally
* First, make sure you have docker desktop installed
* Then make sure you have apache2 installed
* command to build the image from the docker file is `docker build -t my-apache-server .`
* command to run the container is `docker run -d -p 8080:80 my-apache-server`
* find the website by putting `http://localhost:8080` in a URL search
