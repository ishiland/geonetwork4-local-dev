# Geonetwork 4 Local Development

## Running

```sh
docker-compose -f docker-compose.yml
```

**m1 macbooks**

```sh
docker-compose -f docker-compose.yml -f docker-compose.m1-override.yml up -d
```

## Service URLs

### Geonetwork
http://localhost/geonetwork

### Kibana
http://localhost/kibana


## To Do
- wait for database service in geonetwork
- volume mapping to geonetwork configuration (build own war file?)
- test and implement `ogc-api-records-service`