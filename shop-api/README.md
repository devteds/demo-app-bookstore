# ShopAPI: API for Shopping UI 

## In dev

```
docker-compose build
docker-compose up

# on another terminal window
docker-compose exec app rails db:migrate

# open on browser or
open http://localhost:3002/
```


## Manage books w/ API

Get list of books

```
GET: http://localhost:3002/api/books
```

Create book record

```
POST: http://localhost:3002/api/books
{
	"book": {
		"title": "Docker for beginners",
		"description": "some description"
	}
}
```

Get a book by id

```
GET: http://localhost:3002/api/books/1
```


## Seed to populate test data

```
# if service is already running
docker-compose exec app rails db:seed

# other option
docker-compose run --rm app rails db:seed
```
