# timer_back

## setup
```
docker-compose build
docker-compose up -d db
docker-compose run web bundle exec rails db:create
docker-compose run web bundle exec ridgepole -a -E development -c config/database.yml -f db/Schemafile
```

## start server
```
docker-compose up
# server will run at localhost:80
```
