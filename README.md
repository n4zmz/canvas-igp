canvas-igp
==========

This is an HTML5 Canvas port of the "Irregular Grid Painter" (IGP) application by Zlosk.  You can find the original IGP here http://www.zlosk.com/pgmg/igp/downloads.html.  Zlosk has (quite reasonably) requested that any derivatives of his work call themselves something other than simply "IGP" to avoid confusion.

If you would like to easily run a local instance, run the following python command in the canvas-igp root directory (replace [port] with your desired port number):

python -m http.server [port]

Then point your web browser at http://localhost:[port]

## Great how do I get started

Obviously its a docker image so you need docker, if you don't know what that is you need to look into that first.

### docker

```bash
docker create \
  --name=canvas_igp \
  --restart unless-stopped \
  n4zmz/canvas_igp
```

### docker-compose

```yaml
---
version: '3.4'
services:
  canvas_igp:
    image: n4zmz/canvas_igp
    container_name: canvas_igp
```

