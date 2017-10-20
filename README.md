# Docker for sinatra and legacy mysql database
Setup from:
https://medium.com/@fbzga/how-to-cache-bundle-install-with-docker-7bed453a5800

Gem bundle is kept in a data volume managed by the box container. The application startup calls a shell script to check or install the bundle. This moves the Gem handling outside of the image.

To start:
```bash
$ docker-compose up
```

When a gem is added:
```bash
$ docker-compose run app bundle install
```

