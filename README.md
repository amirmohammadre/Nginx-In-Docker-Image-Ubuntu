# Run Nginx in docker based on ubuntu image 

**run nginx on port 80 based on ubuntu docker image**

```docker
sudo docker build -t site:v1.0 . 
```

```docker
sudo docker run --rm --name nginx -p 8080:80 -d site:v1.0 
```
