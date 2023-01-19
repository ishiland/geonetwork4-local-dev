# Geonetwork 4 Local Development

## Running

```sh
docker-compose up -d
```

**m1 macbooks**

```sh
docker-compose -f docker-compose.yml -f docker-compose.m1-override.yml up -d
```

## Service URLs

### Geonetwork
http://localhost/geonetwork

### Kibana
> you must authenticate with Geonetwork first before accessing this URL, then you will be prompted for ES credentials (elastic/es_password)

http://localhost/geonetwork/dashboards


## To Do
- wait for database service in geonetwork
- volume mapping to geonetwork configuration (build own war file?)
- test and implement `ogc-api-records-service`