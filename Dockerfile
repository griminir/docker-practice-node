# this is the version of operating system and the version of node that we are using
# docker hub has a list of all the available images that we can use
FROM node:23.4-alpine3.21

# this sets the working directory all instructions that follow will be executed in this directory
WORKDIR /app

# this copies all files (.) from the current directory to the working directory (/app)
# if we need to copy a file that has a space in the name we can use the following syntax
# COPY ["hello world.txt", "."]
COPY . . 

# ADD lets us add files from a URL and it can also extract zip files (aka COPY with extra features)

# RUN lets you run commands in the container
RUN npm install

# adds an environment variable to the container
ENV API_URL=http://api.myapp.com


# to build the image we run the following command
# docker build -t myapp . (build makes the image, -t tags the image with the name myapp and the . is the current directory)

# to create and run the container we run the following command
# docker run myapp sh (this will run the shell in the container)