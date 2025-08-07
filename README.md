# personal-custom-containers
Debugging toolkit I use


## personal-custom-containers:httpd-cloudflared

```
podman run -d --name my-httpd-tunnel -e CLOUDFLARE_TOKEN=MyAPIKey -v /html/to/serve:/usr/local/apache2/htdocs/ ghcr.io/zhaokunqi/personal-custom-containers:httpd-cloudflared
```
