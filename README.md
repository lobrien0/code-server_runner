# code-server_runner  

A simple project based from the LinuxServer team and the docker image linuxserver/code-server that allows you to compile and run nearly any primary programing language

---

**Current Supported Programing Languages**  
1. Java  
2. JavaScript  (node)  
3. C / C++  
4. C#  
5. Python 3.10  

## Pulling from DockerHub

In order to pull from docker hub:

1. download `docker-compose.yml` and place it anywhere (Be sure to edit the password value)

2. Open a terminal and navigate to where the `docker-compose.yml` is located

3. Run the following command  
   ```bash
   docker compose up -d
   ```  
   > Notice the `up` option. This tells the docker compose program to run the compose configuration file

   > Notice the `-d` option. This tells docker to run the previous commands detached from the terminal

## Building Image

In order to build from the `Dockerfile` please follow these steps:

1. Download all files above and place them in a folder

2. Open a terminal and navigate to the folder where the items were downlaoded

3. Run the following command:  
   ```bash
   docker build -t <TAG> .
   ```  
   > Notice the `-t` option. This allows your to name your image what ever you'd like

   > Notice the `.`. This allows tells the docker program to look in your current working directory

4. Let the image finish building (it could take a while)

5. One image is built, use a text editor to open `docker-compose.yml` 

6. change everything after `image:` to match the `<TAG>` you build your image with.

7. Save the file

8. Run the Compose file using the following command:  
   ```bash
   docker compose up -d
   ```  
   > Notice the `up` option. This tells the docker compose program to run the compose configuration file

   > Notice the `-d` option. This tells docker to run the previous commands detached from the terminal

## Web & ReverseProxy Info

By default the image runs on _port:_ `8443`  
You can access it on the machine running the container by going to:  
```https://localhost:8443```

I would _NOT_ recomend you change this port  
Instead set up a reverse proxy that connects to the local machine over _port:_ `80`, or even better, _port:_ `443`
