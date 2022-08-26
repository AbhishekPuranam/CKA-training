### Setup 
```sh
run : kubectl apply -f setup.yaml
```

### Problem Statement

- Question1 on Sidecar container: In the namespace ``` apartment ``` Create a Pod ```multipod``` with main container  name ``` maincontainer ```  and image ```busybox ``` and which executes this ``` “while true; do echo ‘Hi I am from Main container’ >> /var/log/index.html; sleep 5; done” ``` and with sidecar container ``` sidecarcontainer ``` with image ```nginx ``` image which exposes on port 80. Use emptyDir Volume and mount this volume on path ``` /var/log ``` for busybox and on path ``` /usr/share/nginx/html ``` for nginx container. Verify both containers are running.

- Question2 on init Container: In the namespace ``` apartment ``` Create a Pod ```initpod ``` with main container name ``` initcontainer ```  and image ```busybox ``` and which executes this ``` “echo ‘Hi I am from Main container’” ``` and with sidecar container ``` sidecarcontainer ``` with image ```nginx ``` image which exposes on port 80.