# nginx-cors-proxy

A simple nginx proxy that you can put in front of any domain to enable CORS.
Handles the preflight requests that can occur when trying to use `application/json`
as the request content-type.

## Build the Container

```
docker build -t nginx-cors-proxy .
```

## Run the Container

### Docker Run

```bash
docker run -it --rm -p 80:80 -e TARGET=http://example.com nginx-cors-proxy
```

### Docker Compose

```yaml
version: '2'
services:
  nginx:
    image: shakyshane/nginx-cors-plus
    ports:
      - 8090:80
    environment:
      - TARGET=https://example.com
```
