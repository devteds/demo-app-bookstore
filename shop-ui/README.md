# Book Shopping Web

Vuejs Web UI application that uses [ShopAPI](../shop-api) REST JSON APIs

## Scope

- List & browse books (complete)
- Search, Paginate books (pending)
- Book Detail Page (pending))
- Cart (pending)

## In dev

```
docker-compose build
docker-compose up
```

## Verify and test

```
open http://localhost:8082
```

## Build & Test Production Image

```
make build
docker run -it --rm -p 8083:80 devteds/demo-bookstore-shopui:latest
open http://localhost:8083
```

## Build & Push

```
make build
make push
```
