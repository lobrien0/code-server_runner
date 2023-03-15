# code-server_runner  

A simple project based from the LinuxServer team and the docker image linuxserver/code-server that allows you to compile and run nearly any primary programing language

---

<div style="display: flex; flex-direction: row; padding:2rem; justify-content:center; align-items:center;">
  <div style="width:50%;">

---

<br>

## TOC

- [Pulling From DockerHub](#pulling-from-dockerhub)

- [Building Docker Image](#building-image)

- [Web Routing & Information](#web-routing--information)

<br>

---

  </div>
  <div style="width:50%; padding-left:3rem;">

## Current Language Support
1. Java  
2. JavaScript  (node)  
3. C / C++  
4. C#  
5. Python 3.10  

  </div>
</div>

---

<br><br>

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

## Web Routing & Information

By default the image runs on _port:_ `8443`  
You can access it on the machine running the container by going to:  
```https://localhost:8443```

The port can be changed by modifying the `docker-compose.yml` script. Use the examples below to see how:

<div style="display: flex; flex-direction: row; padding-top:2rem;justify-content:center; align-items:center;padding-bottom:2rem;">
  <div style="width:50%; padding-right:1rem;">

```dockerfile
# This section shows the original Code

ports:
    - 8443:8443

# To change the port, you only have to
# focuse on this section
```

  </div>
  <div style="width:50%; padding-left:1rem;">

```dockerfile
# This section shows the modified Code
# that changes the port you would enter
# into your browser

ports:
    - 8888:8443

# The section before the `:` determins the *Host* port
```

  </div>
</div>