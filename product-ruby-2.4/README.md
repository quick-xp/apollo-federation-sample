# README
Account System For Apollo Federation Sample 


* Setup
```
docker-compose build
docker-compose run api bundle exec rake db:create
docker-compose run api bundle exec rake db:migrate
docker-compose run api bundle exec rake db:seed
```

* Run
```
docker-compose up api
```

* Sample
```
query {
  topProducts {
    id
    name
    price
    upc
    weight
  }
}
```
![image](https://user-images.githubusercontent.com/3175028/65484801-ee137480-deda-11e9-9d40-631a4e2d52a0.png)


* Connect to the database
```
host: 127.0.0.1
user: root
port: 13307
```
