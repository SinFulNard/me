
# Its a me!

### Build the container
```
$ git clone https://github.com/SinFulNard/me.git
$ docker build -t me .
```

### Run the container locally
By default the site is exposed on port 80
```
$ docker run -d me
```

### Expose behind nginx-proxy
A ENV of virtual_host is set during build so the container can run behind nginx-proxy
```
# Start the nginx-proxy image
$ docker run --restart always -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy
$ docker run -d me
# Confirm via the nginx-proxy logs that the container was registered
$ docker logs <nginx-proxy-container-id>
dockergen.1 | 2018/09/23 08:15:58 Generated '/etc/nginx/conf.d/default.conf' from 2 containers
```
